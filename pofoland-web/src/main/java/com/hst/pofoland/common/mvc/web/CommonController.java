package com.hst.pofoland.common.mvc.web;

import org.springframework.beans.factory.annotation.Autowired;

import com.hst.pofoland.biz.code.service.CodeService;

/**
 * 포폴랜드 공통 추상 컨트롤러
 *
 * @author HG
 * @since 2018. 7. 1.
 * @see
 *
 */
public class CommonController {

    private static final String REDIRECT_PREFIX = "redirect:";
    
    private static final String FORWARD_PREFIX = "forward:";
    
    /**
     * 공통코드 서비스
     */
    @Autowired    
    protected CodeService codeService;
    
    public String redirect(String dest) {
        return REDIRECT_PREFIX + dest;
    }
    
    public String forward(String dest) {
        return FORWARD_PREFIX + dest;
    }
    
}
