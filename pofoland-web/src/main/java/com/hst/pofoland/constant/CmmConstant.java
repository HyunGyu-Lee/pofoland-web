/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.constant;

/**
 * 공통 Constant
 *
 * @author YP
 * @since 2018. 8. 19.
 * @see
 */
public final class CmmConstant {
	/** YES */
	public static final String YES = "Y";
	/** NO */
	public static final String NO = "N";
	
	/** 게시판구분(CM001) */
	public final class BoardSeCd {
		/** 공지사항 */
		public static final String NOTI = "0001";
		/** Q&A */
		public static final String QNA  = "0002";
		/** 포럼 */
		public static final String FRUM = "0003";
		/** 구직 */
		public static final String JOBS = "0004";
	}
	
	/** 게시판구분명 */
	public final class BoardSeNm {
		/** 공지사항 */
		public static final String NOTI = "notice";
		/** Q&A */
		public static final String QNA  = "qna";
		/** 포럼 */
		public static final String FRUM = "forum";
		/** 구직 */
		public static final String JOBS = "jobs";
	}

}
