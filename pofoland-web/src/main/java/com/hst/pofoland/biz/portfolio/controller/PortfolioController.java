/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hst.pofoland.biz.code.service.CodeService;

/**
 * 포트폴리오 관리 Controller
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Controller
@RequestMapping("portfolio")
public class PortfolioController {

    /**
     * 공통코드 서비스
     */
    private CodeService codeService;
    
    @GetMapping("")
    public String pofolands(Model model) {
        // 포트폴리오 유형구분코드 목록
        model.addAttribute("categoryList", codeService.findByGroupCode("PF001"));
        
        return "portfolio/portfolioList";
    }
    
    @GetMapping("managemet")
    public String portfolioManagemet(Model model) {
        return "portfolio/portfolioList";
    }
    
}
