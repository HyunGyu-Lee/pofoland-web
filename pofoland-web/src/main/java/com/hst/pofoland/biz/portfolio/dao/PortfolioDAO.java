/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.domain.PortfolioFile;
import com.hst.pofoland.biz.portfolio.domain.PortfolioPage;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * 포트폴리오 관리 DAO
 *
 * @author HG
 * @since 2018. 7. 22.
 * @see
 *
 */
@Mapper
public interface PortfolioDAO extends CommonDAO<Integer, Portfolio> {

    /**
     * 포트폴리오 페이지 등록
     * 
     * @param portfolioPage
     */
    void createPage(PortfolioPage portfolioPage);

    /**
     * 포트폴리오 파일 등록
     * 
     * @param pfFile
     */
    void createPortfolioFile(PortfolioFile pfFile);
    
    /**
     * 포트폴리오 페이지 목록 조회
     * 
     * @param pofolNo
     */
    List<PortfolioPage> findPortfolioPageList(Integer pofolNo);

    /**
     * 포트폴리오 파일 조회
     * 
     * @param pofolFileNo
     * @return
     */
    PortfolioFile findPortfolioFile(@Param("pofolNo") Integer pofolNo, @Param("pofolFileNo") Integer pofolFileNo);
}
