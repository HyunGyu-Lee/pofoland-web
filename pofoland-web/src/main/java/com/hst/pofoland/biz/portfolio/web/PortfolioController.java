/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.biz.portfolio.domain.Portfolio;
import com.hst.pofoland.biz.portfolio.service.PortfolioService;
import com.hst.pofoland.common.mvc.web.CommonController;

/**
 * 포트폴리오 관리 Controller
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Controller
@RequestMapping("portfolios")
public class PortfolioController extends CommonController {

    /**
     * 포트폴리오 서비스
     */
    @Autowired
    private PortfolioService portfolioService;
    
    /**
     * 포트폴리오 유형구분코드 모델
     * 
     * @return
     */
    @ModelAttribute("categoryList")
    public List<Code> categoryList() {
        return codeService.findByGroupCode("PF001");
    }
    
    @GetMapping("management")
    public String pofolands(Model model) {
        return "portfolio/list";
    }
    
    @GetMapping("create")
    public String newPortfolio() {
        return "portfolio/create";
    }
    
    @GetMapping("{pofolNo}")
    public String detail(@PathVariable("pofolNo") Integer pofolNo, Model model) {
        model.addAttribute("portfolio", portfolioService.findByPofolNo(pofolNo));
        
        return "portfolio/detail";
    }
    
}
