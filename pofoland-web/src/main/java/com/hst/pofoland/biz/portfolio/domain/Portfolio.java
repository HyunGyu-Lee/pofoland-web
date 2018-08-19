/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 포트폴리오 정보 Domain
 *
 * @author HG
 * @since 2018. 7. 22.
 * @see
 *
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Portfolio implements Serializable {

    private static final long serialVersionUID = -8565583098292589199L;

    /**
     * 포트폴리오 일련번호
     */
    private Integer pofolNo;
    
    /**
     * 등록사용자번호
     */
    private Integer regUserNo;
    
    /**
     * 등록사용자명
     */
    private String regUserNm;
    
    /**
     * 등록일시
     */
    private Date regDtm;
    
    /**
     * 수정일시
     */
    private Date updDtm;
    
    /**
     * 포트폴리오명
     */
    private String pofolNm;
    
    /**
     * 포트폴리오 설명
     */
    private String pofolDesc;
    
    /**
     * 포트폴리오 유형코드
     */
    private String pofolTypeCd;
    
    /**
     * 포트폴리오 유형명
     */
    private String pofolTypeNm;
    
}