/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.portfolio.dao.PortfolioDAO;
import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.domain.PortfolioFile;
import com.hst.pofoland.biz.portfolio.domain.PortfolioPage;
import com.hst.pofoland.biz.storage.domain.StoreResult;
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
     * 포트폴리오 목록조회
     * 
     * @param portfolioCondition
     * @return
     */
    public List<Portfolio> findAll(Portfolio portfolioCondition) {
        return portfolioDao.findList(portfolioCondition);
    }

    /**
     * 포트폴리오 등록
     * 
     * @param portfolio
     */
    public void create(Portfolio portfolio) {
        // 기본정보 등록
        portfolioDao.create(portfolio);
        
        log.debug("{}", portfolio.getPofolNo());
        
        // 페이지 등록
        for (PortfolioPage portfolioPage : portfolio.getPortfolioPages()) {
            portfolioPage.setPofolNo(portfolio.getPofolNo());
            
            createPortfolioPage(portfolioPage);
        }
    }
    
    /**
     * 포트폴리오 페이지 등록
     * 
     * @param portfolioPage
     */
    public void createPortfolioPage(PortfolioPage portfolioPage) {
        portfolioDao.createPage(portfolioPage);
    }
    
    /**
     * 포트폴리오 파일 등록
     * 
     * @param pofolNo       포트폴리오 번호
     * @param pofolPageNo   포트폴리오 페이지 번호
     * @param result        파일 업로드 결과
     */
    public void createPortfolioFile(Integer pofolNo, Integer pofolPageNo, StoreResult result) {
        PortfolioFile pfFile = new PortfolioFile();
        pfFile.setPofolNo(pofolNo);
        pfFile.setPofolPageNo(pofolPageNo);
        pfFile.setPofolFilePath(result.getStoredPath());
        pfFile.setPofolFileOrgnNm(result.getOriginalName());
        pfFile.setPofolFileSaveNm(result.getStoredName());
        pfFile.setPofolFileSize(Long.valueOf(result.getSize()).intValue());
        pfFile.setPofolFileExtNm(result.getExtention());
        
        portfolioDao.createPortfolioFile(pfFile);
    }
    
}
