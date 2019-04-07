/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.mvc.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

import com.hst.pofoland.common.utils.StringUtils;

/**
 * Overriding된 메소드를 스프링에서 인식할 수 있도록 변환하는 필터
 *
 * @author HG
 * @since 2019. 4. 5.
 * @see
 *
 */
public class MethodOverrideHandlerFilter extends OncePerRequestFilter {

    private static final String X_HTTP_METHOD_OVERRIDE_HEADER = "X-HTTP-Method-Override";
    
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String headerValue = request.getHeader(X_HTTP_METHOD_OVERRIDE_HEADER);
        
        if ("POST".equals(request.getMethod()) && StringUtils.isNotBlank(headerValue)) {
            String overridedMethod = headerValue.toUpperCase();
            request = new HttpMethodRequestWrapper(request, overridedMethod);
        }
        
        filterChain.doFilter(request, response);
    }

    /**
     * 
     *
     * @author HG
     * @since 2019. 4. 6.
     * @see
     *
     */
    private static class HttpMethodRequestWrapper extends HttpServletRequestWrapper {

        private final String method;

        public HttpMethodRequestWrapper(HttpServletRequest request, String method) {
            super(request);
            this.method = method;
        }

        @Override
        public String getMethod() {
            return this.method;
        }
    }
    
}
