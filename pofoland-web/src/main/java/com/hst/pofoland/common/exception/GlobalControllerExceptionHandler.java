/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

/**
 * Global Exception 처리기
 *
 * @author HG
 * @since 2019. 2. 10.
 * @see
 *
 */
@ControllerAdvice
@Slf4j
public class GlobalControllerExceptionHandler {

    /**
     * TODO
     * 
     * 1. 400
     * 2. 404
     * 3. 500
     * 4. 기타 커스텀 오류 추가
     * 
     * 에러페이지는 하나만 두는것도 생각해볼것
     */
    
    @ExceptionHandler(AccessDeniedException.class)
    public ModelAndView handleAccessDenied(HttpServletRequest request, Exception exception) {
        ModelAndView mav = new ModelAndView("error/400");
        log.error("access denied");
        return mav;
    }
    
}
