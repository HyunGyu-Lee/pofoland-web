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
    	/** 공통그룹코드 */
    	public static final String COMM_GRP_CD = "CM001";
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
    
    /** 포트폴리오 유형 (PF001) */
    public final class PortfolioTypeCd {
        /** 공통그룹코드 */
        public static final String COMM_GRP_CD = "PF001";
        /** 경영 */
        public static final String OPERATION = "0001";
        /** 마케팅 */
        public static final String MARKETING = "0002";
        /** IT */
        public static final String IT        = "0003";
        /** 디자인 */
        public static final String DESIGN    = "0004";
        /** 건설 */
        public static final String ERECTION  = "0005";
        /** 미디어 방송 */
        public static final String MEDIA     = "0006";
    }
    
    /** 포트폴리오 페이지 유형 (PF002) */
    public final class PortfolioPageTypeCd {
        /** 글 */
        public static final String TEXT = "0001";
        /** 사진 */
        public static final String PICTURE = "0002";
        /** 동영상 */
        public static final String MOVIE = "0003";
    }
    
}
