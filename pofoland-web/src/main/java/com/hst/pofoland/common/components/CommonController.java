package com.hst.pofoland.common.components;

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
    
    public String redirect(String dest) {
        return REDIRECT_PREFIX + dest;
    }
    
    public String forward(String dest) {
        return FORWARD_PREFIX + dest;
    }
    
}
