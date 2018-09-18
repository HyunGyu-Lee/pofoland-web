/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.web;

import java.io.InputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
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
import com.hst.pofoland.biz.portfolio.domain.PortfolioFile;
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
     * 포트폴리오 목록 조회 API
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
    
    /**
     * 포트폴리오 기본정보 + 페이지 등록 API
     * 
     * @param portfolio
     * @return
     */
    @PostMapping
    public CommonApiResponse createPortfolio(@RequestBody Portfolio portfolio) {
        portfolioService.create(portfolio);
        
        return ok(portfolio.getPofolNo());
    }
    
    /**
     * 포트폴리오 파일 등록
     * 
     * @param pofolNo       대상 포트폴리오 번호
     * @param pofolPageNo   포트폴리오 내 페이지 번호
     * @param multipartFile 업로드 파일 객체
     * @return
     * @throws Exception
     */
    @PostMapping("{pofolNo}/{pofolPageNo}/upload")
    public CommonApiResponse uploadFile(@PathVariable("pofolNo") Integer pofolNo,
            @PathVariable("pofolPageNo") Integer pofolPageNo, @RequestParam("file") MultipartFile multipartFile)
            throws Exception {
        // TODO 현재 포트폴리오만 저장하게 되있음, 업무영역따라 저장하게 수정필요
        StoreResult storeResult = storageService.store("portfolio", multipartFile);
        portfolioService.createPortfolioFile(pofolNo, pofolPageNo, storeResult);
        
        return ok();
    }
    
    @GetMapping(value = "images/{pofolFileNo}", produces = MediaType.IMAGE_JPEG_VALUE)
    public byte[] serveImage(@PathVariable("pofolFileNo") Integer pofolFileNo) throws Exception {
        PortfolioFile portfolioFile = portfolioService.findFileByPofolFileNo(pofolFileNo);
        
        return storageService.getBytes(portfolioFile);
    }
    
}
