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

/**
 * 포트폴리오 관리 Service
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Service
public class PortfolioService {

    /**
     * 포트폴리오 DAO
     */
    private PortfolioDAO portfolioDao;
    
    @Autowired
    public PortfolioService(PortfolioDAO portfolioDao) {
        this.portfolioDao = portfolioDao;
    }
    
    public List<Portfolio> findAll(Portfolio portfolioCondition) {
        return portfolioDao.findList(portfolioCondition);
    }
    
}
