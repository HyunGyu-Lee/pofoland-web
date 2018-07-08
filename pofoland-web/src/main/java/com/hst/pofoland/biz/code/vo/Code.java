/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
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
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Code {

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
    
    /**
     * 등록일시
     */
    private Timestamp regDtm;
    
    /**
     * 등록사용자번호
     */
    private Integer regUserNo;
    
    /**
     * 수정일시
     */
    private Timestamp updDtm;
    
    /**
     * 수정사용자번호
     */
    private Integer updUserNo;
    
}
