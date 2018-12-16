package com.hst.pofoland.common.mvc.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

import com.hst.pofoland.biz.code.service.CodeService;
import com.hst.pofoland.common.framework.ApplicationContextProvider;
import com.hst.pofoland.common.mvc.domain.CommonApiResponse;

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
    
    @Autowired
    protected ApplicationContextProvider contextProvider;
    
    /**
     * dest로 리다이렉트
     * 
     * @param dest
     * @return
     */
    public String redirect(String dest) {
        return REDIRECT_PREFIX + dest;
    }
    
    /**
     * dest로 포워드
     * 
     * @param dest
     * @return
     */
    public String forward(String dest) {
        return FORWARD_PREFIX + dest;
    }
    
    /**
     * AJAX요청에 대해 200 응답 반환
     * 
     * @param payloads
     * @return
     */
    public CommonApiResponse ok() {
        return responseForApi(HttpStatus.OK, null, null);
    }
    
    /**
     * AJAX요청에 대해 200 응답 반환
     * 
     * @param payloads
     * @return
     */
    public CommonApiResponse ok(Object payloads) {
        return responseForApi(HttpStatus.OK, null, payloads);
    }
    
    /**
     * AJAX요청에 대해 200 응답 반환
     * 
     * @param payloads
     * @return
     */
    public CommonApiResponse ok(String message, Object payloads) {
        return responseForApi(HttpStatus.OK, message, payloads);
    }
    
    /**
     * AJAX요청에 대해 404 응답 반환
     * 
     * @param payloads
     * @return
     */
    public CommonApiResponse notFound(String message, Object payloads) {
        return responseForApi(HttpStatus.NOT_FOUND, message, payloads);
    }
    
    /**
     * AJAX요청에 대해 400 응답 반환
     * 
     * @param payloads
     * @return
     */
    public CommonApiResponse badRequest(String message, Object payloads) {
        return responseForApi(HttpStatus.BAD_REQUEST, message, payloads);
    }
    
    /**
     * AJAX요청에 대해 응답 반환
     * 
     * @param payloads
     * @return
     */
    public CommonApiResponse responseForApi(HttpStatus status, String message, Object payloads) {
        return CommonApiResponse.builder().responseCode(status).message(message).payloads(payloads).build();
    }
    
}
