package com.hst.pofoland.common.components;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.hst.pofoland.common.mvc.vo.CommonApiResponse;

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
    
    private static final String FORWARD_PREFIX = "forward:";
    
    public String redirect(String dest) {
        return REDIRECT_PREFIX + dest;
    }
    
    public String forward(String dest) {
        return FORWARD_PREFIX + dest;
    }
    
    /**
     * REST Controller 표준 응답 메소드
     * 
     * @param response
     * @return
     */
    public ResponseEntity<?> buildResponseEntity(CommonApiResponse response) {
        if (response == null) {
            response = CommonApiResponse.builder().responseCode(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
        
        return new ResponseEntity<Object>(response, response.getResponseCode());
    }
    
}
