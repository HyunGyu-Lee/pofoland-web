/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.common.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.hst.pofoland.biz.code.service.CodeService;

/**
 * 포폴랜드 공통 추상 서비스
 *
 * @author HG
 * @since 2018. 8. 12.
 * @see
 *
 */
public class CommonService {

    @Autowired    
    protected CodeService codeService;
    
}
