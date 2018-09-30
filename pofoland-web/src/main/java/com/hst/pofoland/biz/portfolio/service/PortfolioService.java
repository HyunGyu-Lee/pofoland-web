/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.portfolio.dao.PortfolioDAO;
import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.domain.PortfolioFile;
import com.hst.pofoland.biz.portfolio.domain.PortfolioPage;
import com.hst.pofoland.biz.storage.domain.StoreResult;
import com.hst.pofoland.common.mvc.service.CommonService;
import com.hst.pofoland.constant.CmmConstant;

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
        // 1. 포트폴리오 기본정보 등록
        portfolioDao.create(portfolio);
        
        log.debug("포트폴리오 기본정보 등록 완료");
        
        // 2. 각 페이지 등록
        for (PortfolioPage portfolioPage : portfolio.getPortfolioPages()) {
            portfolioPage.setPofolNo(portfolio.getPofolNo());
            
            createPortfolioPage(portfolioPage);
        }
        
        log.debug("포트폴리오 등록 완료");
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
        // 1. 포트폴리오 상세 조회
        Portfolio portfolio = portfolioDao.findOne(pofolNo);
        
        // 2. 포트폴리오 페이지 목록 조회
        if (portfolio != null) {
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
            portfolio.setMainImageAutoYn(CmmConstant.NO);
        }
        // 1-2. 대표이미지를 업로드하지 않은 경우 (자동선택)
        else {
            log.debug("대표이미지를 업로드하지 않음. 자동선택 시작");
            
            Portfolio targetPortfolio = this.findByPofolNo(pofolNo);
            Optional<PortfolioPage> selectedPage = targetPortfolio.getPortfolioPages().stream()
                    .filter(page -> CmmConstant.PortfolioPageTypeCd.PICTURE.equals(page.getPofolPageTypeCd()))
                    .findFirst();
            
            if (selectedPage.isPresent()) {
                portfolio.setMainImageFileNo(selectedPage.get().getPofolFileNo());
            }
            
            portfolio.setMainImageAutoYn(CmmConstant.YES);
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
    
}
