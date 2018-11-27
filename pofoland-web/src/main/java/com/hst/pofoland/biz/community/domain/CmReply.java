/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.community.domain;

import java.io.Serializable;
import java.util.Date;

import com.hst.pofoland.common.mvc.domain.PagableDomain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * CM_REPLY DOMAIN
 *
 * @author YP
 * @since 2018. 11. 4.
 * @see
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CmReply extends PagableDomain implements Serializable {

	private static final long serialVersionUID = 8450575810849151834L;
	
	/* 댓글번호 */
	private int replyNo;
	/* 상위댓글번호 */
	private int upReplyNo;
	/* 게시판번호 */
	private int boardNo;
	/* 댓글내용 */
	private String replyCont;
	/* 등록일시 */
	private Date regDtm;
	/* 등록사용자이메일 */
	private String regUserEmail;
	/* 수정일시 */
	private Date updDtm;
	/* 수정사용자이메일 */
	private String updUserEmail;
	/* 삭제여부 */
	private String delYn;

}
