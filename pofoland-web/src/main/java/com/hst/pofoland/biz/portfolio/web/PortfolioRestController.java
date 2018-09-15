/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.web;

import java.io.File;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.service.PortfolioService;
import com.hst.pofoland.biz.storage.domain.StoreResult;
import com.hst.pofoland.biz.storage.service.StorageService;
import com.hst.pofoland.common.mvc.domain.CommonApiResponse;
import com.hst.pofoland.common.mvc.web.CommonController;

import lombok.extern.slf4j.Slf4j;

/**
 * 포트폴리오 관리 REST Controller
 *
 * @author HG
 * @since 2018. 7. 22.
 * @see
 *
 */
@RestController
@RequestMapping("/api/portfolios")
@Slf4j
public class PortfolioRestController extends CommonController {

    @Autowired
    private PortfolioService portfolioService;
    
    @Autowired
    private StorageService storageService;
    
    /**
     * GET + RequestParameter 이용
     * 
     * @param searchCriteria
     * @return
     */ 
    @GetMapping
    public CommonApiResponse getPortfolioList(Portfolio searchCriteria) {
        log.info("Request : {}", searchCriteria);
        
        PageHelper.startPage(searchCriteria.getPageNo(), 10);

        List<Portfolio> list = portfolioService.findAll(searchCriteria);
       
        return ok(new PageInfo<Portfolio>(list));
    }
    
    // POST + RequestParameter
    @PostMapping
    public CommonApiResponse createPortfolio(@RequestBody Portfolio portfolio) {
        portfolioService.create(portfolio);
        
        return ok(portfolio.getPofolNo());
    }
    
    // POST + @RequestBody 이용
    @PostMapping("{pofolNo}/{pofolPageNo}/upload")
    public CommonApiResponse uploadFile(@PathVariable("pofolNo") Integer pofolNo,
            @PathVariable("pofolPageNo") Integer pofolPageNo, @RequestParam("file") MultipartFile multipartFile)
            throws Exception {
        // TODO 현재 포트폴리오만 저장하게 되있음, 업무영역따라 저장하게 수정필요
        StoreResult storeResult = storageService.store(multipartFile);
        portfolioService.createPortfolioFile(pofolNo, pofolPageNo, storeResult);
        
        return ok();
    }
}
