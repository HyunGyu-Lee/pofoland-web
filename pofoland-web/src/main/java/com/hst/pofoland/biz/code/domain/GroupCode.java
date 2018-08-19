/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.domain;

import com.hst.pofoland.common.mvc.domain.BasicDomain;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 공통그룹코드 Vo
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class GroupCode extends BasicDomain {

    private static final long serialVersionUID = -3773654902608904456L;

    /**
     * 공통그룹코드
     */
    private String commGrpCd;
    
    /**
     * 공통그룹코드명
     */
    private String commGrpCdNm;
    
    /**
     * 공통그룹코드 설명
     */
    private String commGrpCdCont;
    
}
