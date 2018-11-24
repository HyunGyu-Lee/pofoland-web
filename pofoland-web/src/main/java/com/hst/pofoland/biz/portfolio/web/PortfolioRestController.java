/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

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
     * 포트폴리오 대표이미지 변경 API
     * 
     * @param pofolNo     대상 포트폴리오
     * @param mainImage   대표이미지 파일 객체
     * @return
     */
    @PutMapping("{pofolNo}/main-image")
    public CommonApiResponse changePortfolioMainImage(@PathVariable("pofolNo") Integer pofolNo,
            @RequestParam(name = "mainImage", required = false) MultipartFile mainImage) {
        StoreResult result = null;        
        
        if (mainImage != null) {
            result = storageService.store("portfolio", mainImage);
        }
        
        portfolioService.changePortfolioMainImage(pofolNo, result);

        return ok();
    }
    
    /**
     * 포트폴리오 페이지 파일 등록 API
     * 
     * @param pofolNo       대상 포트폴리오 번호
     * @param pofolPageNo   포트폴리오 내 페이지 번호
     * @param multipartFile 업로드 파일 객체
     * @return
     * @throws Exception
     */
    @PostMapping("{pofolNo}/{pofolPageNo}/file")
    public CommonApiResponse uploadPageFile(
            @PathVariable("pofolNo") Integer pofolNo,
            @PathVariable("pofolPageNo") Integer pofolPageNo,
            @RequestParam("file") MultipartFile multipartFile) throws Exception {
        StoreResult storeResult = storageService.store("portfolio", multipartFile);
        portfolioService.createPortfolioFile(pofolNo, pofolPageNo, storeResult);
        
        return ok();
    }
    
    /**
     * 포트폴리오 파일번호 이미지 조회
     * 
     * @param pofolNo       대상 포트폴리오 번호 
     * @param pofolFileNo   포트폴리오 파일번호
     * @return
     * @throws Exception
     */
    @GetMapping(value = "{pofolNo}/images/{pofolFileNo}", produces = MediaType.IMAGE_JPEG_VALUE)
    public byte[] serveImage(@PathVariable("pofolNo") Integer pofolNo, @PathVariable("pofolFileNo") Integer pofolFileNo)
            throws Exception {
        PortfolioFile portfolioFile = portfolioService.findFileByPofolFileNo(pofolNo, pofolFileNo);
        
        byte[] imageData = null;
        
        try {
            imageData = storageService.getBytes(portfolioFile);
        } catch (Exception e) {
            log.error("PortfolioFile {} not found ", portfolioFile);
            // throw new Exception(e);
        }
        
        return imageData;
    }

    @GetMapping(value = "{pofolNo}/videos/{pofolFileNo}", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public byte[] serveVideo(@PathVariable("pofolNo") Integer pofolNo, @PathVariable("pofolFileNo") Integer pofolFileNo)
            throws Exception {
        PortfolioFile portfolioFile = portfolioService.findFileByPofolFileNo(pofolNo, pofolFileNo);
        
        byte[] videoData = null;
        
        try {
            videoData = storageService.getBytes(portfolioFile);
        } catch (Exception e) {
            log.error("PortfolioFile {} not found ", portfolioFile);
            // throw new Exception(e);
        }
        
        return videoData;
    }
    
    @GetMapping(value = "{pofolNo}/videos/{pofolFileNo}/streaming")
    public StreamingResponseBody streaming(@PathVariable("pofolNo") Integer pofolNo, @PathVariable("pofolFileNo") Integer pofolFileNo)
            throws Exception {
        PortfolioFile portfolioFile = portfolioService.findFileByPofolFileNo(pofolNo, pofolFileNo);
        
        storageService.getResourceAsStream(portfolioFile);
        
        return outputStream -> {
            storageService.streaming(portfolioFile, outputStream);
        };
    }
    
}
