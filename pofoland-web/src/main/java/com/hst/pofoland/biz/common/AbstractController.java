package com.hst.pofoland.biz.common;

/**
 * 포폴랜드 공통 추상 컨트롤러
 *
 * @author HG
 * @since 2018. 7. 1.
 * @see
 *
 */
public class AbstractController {

    private static final String REDIRECT_PREFIX = "redirect:";
    
    public String redirect(String dest) {
        return REDIRECT_PREFIX + dest;
    }
    
}
