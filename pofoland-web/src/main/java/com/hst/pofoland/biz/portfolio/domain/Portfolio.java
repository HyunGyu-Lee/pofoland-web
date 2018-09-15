/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.domain;

import java.io.Serializable;
import java.util.List;

import com.hst.pofoland.common.mvc.domain.PagableDomain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
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
@EqualsAndHashCode(callSuper = false)
public class Portfolio extends PagableDomain implements Serializable {

    private static final long serialVersionUID = -8565583098292589199L;

    /**
     * 포트폴리오 일련번호
     */
    private Integer pofolNo;
    
    /**
     * 등록사용자명
     */
    private String regUserNm;
    
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
    
    /**
     * 포트폴리오 페이지 목록
     */
    private List<PortfolioPage> portfolioPages;
}
