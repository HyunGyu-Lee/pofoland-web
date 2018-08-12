/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.domain;

import java.util.Date;

import lombok.Data;

/**
 * 공통그룹코드 Vo
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Data
public class GroupCode {

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
    
    /**
     * 등록일시
     */
    private Date regDtm;
    
    /**
     * 등록사용자번호
     */
    private Integer regUserNo;
    
    /**
     * 수정일시
     */
    private Date updDtm;
    
    /**
     * 수정사용자번호
     */
    private Integer updUserNo;
    
}
