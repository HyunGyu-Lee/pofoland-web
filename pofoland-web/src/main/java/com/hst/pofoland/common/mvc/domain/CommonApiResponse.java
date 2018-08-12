/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.mvc.domain;

import org.springframework.http.HttpStatus;

import lombok.Builder;
import lombok.Data;

/**
 * 공통 API 응답 레이아웃
 *
 * @author HG
 * @since 2018. 7. 7.
 * @see
 *
 */
@Data
@Builder
public class CommonApiResponse {

    private HttpStatus responseCode;
    
    private String message;
    
    private Object payloads;
    
}
