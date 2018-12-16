/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.biz.portfolio.dao.PortfolioDAO;
import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.domain.PortfolioFile;
import com.hst.pofoland.biz.portfolio.domain.PortfolioHashTag;
import com.hst.pofoland.biz.portfolio.domain.PortfolioPage;
import com.hst.pofoland.biz.storage.domain.StoreResult;
import com.hst.pofoland.common.constant.CommonConstant;
import com.hst.pofoland.common.mvc.service.CommonService;

import lombok.extern.slf4j.Slf4j;

/**
 * 포트폴리오 관리 Service
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Service
@Slf4j
public class PortfolioService extends CommonService {

    /**
     * 포트폴리오 DAO
     */
    private PortfolioDAO portfolioDao;
    
    @Autowired
    public PortfolioService(PortfolioDAO portfolioDao) {
        this.portfolioDao = portfolioDao;
    }
    
    /**
     * 포트폴리오 등록
     * 
     * @param portfolio
     */
    public void create(Portfolio portfolio) {
        portfolioDao.create(portfolio);
        
        for (PortfolioHashTag tag : portfolio.getPortfolioHashTags()) {
            tag.setPofolNo(portfolio.getPofolNo());
            createPortfolioHashTag(tag);
        }
        
        for (PortfolioPage portfolioPage : portfolio.getPortfolioPages()) {
            portfolioPage.setPofolNo(portfolio.getPofolNo());
            createPortfolioPage(portfolioPage);
        }
    }
    
    /**
     * 포트폴리오 해시태그 등록
     * 
     * @param tag
     */
    public void createPortfolioHashTag(PortfolioHashTag tag) {
        portfolioDao.createHashTag(tag);
    }
    
    /**
     * 포트폴리오 페이지 등록
     * 
     * @param portfolioPage
     */
    public void createPortfolioPage(PortfolioPage portfolioPage) {
        portfolioDao.createPage(portfolioPage);
        
        log.debug("[{}] 페이지 등록 완료", portfolioPage.getSortOrder());
    }
    
    /**
     * 포트폴리오 파일 등록
     * 
     * @param pofolNo       포트폴리오 번호
     * @param pofolPageNo   포트폴리오 페이지 번호
     * @param result        파일 업로드 결과
     */
    public void createPortfolioFile(Integer pofolNo, Integer pofolPageNo, StoreResult result) {
        PortfolioFile pfFile = convertStoreResultToPofolFile(result);
        pfFile.setPofolNo(pofolNo);
        pfFile.setPofolPageNo(pofolPageNo);
        
        portfolioDao.createPortfolioFile(pfFile);
    }

    /**
     * 포트폴리오 목록조회
     * 
     * @param portfolioCondition
     * @return
     */
    public List<Portfolio> findAll(Portfolio portfolioCondition) {
        return portfolioDao.findList(portfolioCondition);
    }
    
    /**
     * 포트폴리오 상세 조회
     * 
     * @param pofolNo 포트폴리오 번호
     * @return
     */
    public Portfolio findByPofolNo(Integer pofolNo) {
        Portfolio portfolio = portfolioDao.findOne(pofolNo);
        
        if (portfolio != null) {
            List<PortfolioHashTag> portfolioHashTags = portfolioDao.findPortfolioHashTags(pofolNo);
            portfolio.setPortfolioHashTags(portfolioHashTags);
            
            List<PortfolioPage> portfolioPages = portfolioDao.findPortfolioPageList(pofolNo);
            portfolio.setPortfolioPages(portfolioPages);
        }
        
        return portfolio;
    }

    /**
     * 포트폴리오 파일 조회
     * 
     * @param pofolFileNo
     * @return
     */
    public PortfolioFile findFileByPofolFileNo(Integer pofolNo, Integer pofolFileNo) {
        return portfolioDao.findPortfolioFile(pofolNo, pofolFileNo);
    }

    /**
     * 포트폴리오 메인 이미지 변경
     * 
     * @param pofolNo
     * @param result
     */
    public void changePortfolioMainImage(Integer pofolNo, StoreResult result) {
        // 1. 포트폴리오 파일 정보 생성
        Portfolio portfolio = new Portfolio(pofolNo); 
        PortfolioFile pofolFile = null;
        
        log.debug("대표이미지 선택 시작");
        
        // 1-1. 대표이미지를 업로드한 경우
        if (result != null) {
            log.debug("업로드한 이미지 사용");
            
            pofolFile = convertStoreResultToPofolFile(result);
            pofolFile.setPofolNo(pofolNo);
            pofolFile.setPofolPageNo(0);
            
            portfolioDao.createPortfolioFile(pofolFile);
            
            portfolio.setMainImageFileNo(pofolFile.getPofolFileNo());
            portfolio.setMainImageAutoYn(CommonConstant.NO);
        }
        // 1-2. 대표이미지를 업로드하지 않은 경우 (자동선택)
        else {
            log.debug("대표이미지를 업로드하지 않음. 자동선택 시작");
            
            Portfolio targetPortfolio = this.findByPofolNo(pofolNo);
            Optional<PortfolioPage> selectedPage = targetPortfolio.getPortfolioPages().stream()
                    .filter(page -> CommonConstant.PortfolioPageTypeCd.PICTURE.equals(page.getPofolPageTypeCd()))
                    .findFirst();
            
            if (selectedPage.isPresent()) {
                portfolio.setMainImageFileNo(selectedPage.get().getPofolFileNo());
            }
            
            portfolio.setMainImageAutoYn(CommonConstant.YES);
        }
        
        log.debug("{}", portfolio);
        
        // 2. 포트폴리오 기본정보 변경
        portfolioDao.update(portfolio);
    }
    
    /**
     * StoreResult PortfolioFile 도메인으로 컨버팅
     * 
     * @param result
     * @return
     */
    private PortfolioFile convertStoreResultToPofolFile(StoreResult result) {
        PortfolioFile pfFile = new PortfolioFile();
        pfFile.setPofolFilePath(result.getStoredPath());
        pfFile.setPofolFileOrgnNm(result.getOriginalName());
        pfFile.setPofolFileSaveNm(result.getStoredName());
        pfFile.setPofolFileSize(Long.valueOf(result.getSize()).intValue());
        pfFile.setPofolFileExtNm(result.getExtention());
        
        return pfFile;
    }
    
    /**
     * 포트폴리오 카테고리 코드 기준 수직 카테고리 목록 반환
     * 
     * @param pofolTypeCd
     * @return
     */
    public List<Code> getCategoryCodeList(String pofolTypeCd) {
        List<Code> codeList = new ArrayList<Code>();
        
        if (StringUtils.isEmpty(pofolTypeCd)) {
            return codeList;
        }
        
        // XXX 포트폴리오 카테고리 구조가 2뎁스 이상 늘어날 경우, 조회방식 변경할 것
        Code currentCode = codeService.findCode(CmmConstant.PortfolioTypeCd.COMM_GRP_CD, pofolTypeCd);
        
        if (StringUtils.isNotEmpty(currentCode.getUpCommCd())) {
            codeList.add(codeService.findCode(CmmConstant.PortfolioTypeCd.COMM_GRP_CD, currentCode.getUpCommCd()));
        }
        
        codeList.add(currentCode);
        
        return codeList;
    }
    
}
