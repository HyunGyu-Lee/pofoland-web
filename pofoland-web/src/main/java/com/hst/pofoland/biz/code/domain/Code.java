/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.domain;

import com.hst.pofoland.common.mvc.domain.BasicDomain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 공통코드 Vo
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Code extends BasicDomain {

    private static final long serialVersionUID = 8656166742023128892L;

    /**
     * 그룹코드
     */
    private String commGrpCd;
    
    /**
     * 공통코드
     */
    private String commCd;
    
    /**
     * 공통코드명
     */
    private String commCdNm;
    
    /**
     * 공통코드 설명
     */
    private String commCdCont;
    
    /**
     * 공통코드 사용여부
     */
    private String useYn;
    
}
