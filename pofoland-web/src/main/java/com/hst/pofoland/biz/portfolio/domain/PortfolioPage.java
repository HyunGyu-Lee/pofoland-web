/**
 * 
 */
package com.hst.pofoland.biz.portfolio.domain;

import lombok.Data;

/**
 * 포트폴리오 페이지
 *
 * @author HG
 * @since 2018. 9. 11.
 * @see
 *
 */
@Data
public class PortfolioPage {

    /**
     * 포트폴리오 순번
     */
    private Integer pofolNo;
    
    /**
     * 포트폴리오 페이지 시퀀스
     */
    private Integer pofolPageNo;
    
    /**
     * 포트폴리오 페이지 유형코드
     */
    private String pofolPageTypeCd;
    
    /**
     * 포트폴리오 페이지 유형명
     */
    private String pofolPageTypeNm;
    
    /**
     * 포트폴리오 페이지 내용
     */
    private String pofolPageCont;
    
    /**
     * 포트폴리오 페이지 번호
     */
    private Integer sortOrder;
    
    /**
     * 포트폴리오 파일번호
     */
    private Integer pofolFileNo;
}
