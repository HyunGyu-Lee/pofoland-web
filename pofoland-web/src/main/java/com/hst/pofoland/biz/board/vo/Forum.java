/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.board.vo;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 커뮤니티 VO
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Forum implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3697408115748908692L;

	/** 게시글번호 */
	private Integer boardNo;
	/** 게시글구분코드 */
    private String boardSeCd;
    /** 게시글제목 */
    private String boardTtl;
    /** 게시글내용 */
    private String boardCont;
    /** 등록일시 */
    private Date regDtm;
    /** 등록사용자번호 */
    private Integer regUserNo;
    /** 수정일시 */
    private Date updDtm;
    /** 수정사용자번호 */
    private Integer updUserNo;
    /** 조회수 */
    private Integer boardRfncCnt;
    /** 삭제여부 */
    private String delYn;
	
}
