/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.portfolio.domain;

import lombok.Data;

/**
 * 포트폴리오 해시태그
 *
 * @author HG
 * @since 2018. 11. 17.
 * @see
 *
 */
@Data
public class PortfolioHashTag {

    /**
     * 포트폴리오 일련번호
     */
    private Integer pofolNo;
    
    /**
     * 태그명
     */
    private String tagNm;
    
    /**
     * 태그 정렬순서
     */
    private Integer tagOrder;
    
}
