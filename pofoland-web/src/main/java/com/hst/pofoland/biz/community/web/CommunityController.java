/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.community.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.biz.code.service.CodeService;
import com.hst.pofoland.biz.community.domain.CmReply;
import com.hst.pofoland.biz.community.domain.Community;
import com.hst.pofoland.biz.community.service.CommunityService;
import com.hst.pofoland.common.constant.CommonConstant;
import com.hst.pofoland.constant.CmmConstant;
import com.hst.pofoland.constant.CmmConstant.BoardSeCd;

/**
 * 커뮤니티 Controller
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */
@Controller
@RequestMapping("community")
public class CommunityController {

	@Autowired
	CommunityService communityService;	// 커뮤니티 서비스
	
	@Autowired
	CodeService codeService; // 공통코드 서비스
	
	private static final Logger LOG = LoggerFactory.getLogger(CommunityController.class);
	
	/**
	 * Community 게시판 타입 별 목록 조회
	 * @param Model
	 * @return String
	 */
	@GetMapping("{boardSeNm}")
	public String selectCommunityList(Model model, Community param, @PathVariable String boardSeNm) {
		List<Community> resultList = new ArrayList<Community>();
		PageHelper.startPage(param.getPageNo(), param.getPageSize());

		String boardSeCd = ""; // 게시판구분코드(CM001)
		
		/** 게시판 타입별 게시판구분코드 세팅 */
		switch (boardSeNm) {
			// 공지사항(notice)
			case CommonConstant.BoardSeNm.NOTI : 
				boardSeCd = CommonConstant.BoardSeCd.NOTI; // 게시판구분코드 (공지사항, 0001) 세팅
				break;
			// Q&A(qna)
			case CommonConstant.BoardSeNm.QNA :
				boardSeCd = CommonConstant.BoardSeCd.QNA;	// 게시판구분코드 (Q&A, 0002) 세팅
				break;
			// 포럼(frum)
			case CommonConstant.BoardSeNm.FRUM :
				boardSeCd = CommonConstant.BoardSeCd.FRUM;	// 게시판구분코드 (포럼, 0003) 세팅
				break;
			// 구직(jobs)
			case CommonConstant.BoardSeNm.JOBS :
				boardSeCd = CommonConstant.BoardSeCd.JOBS;	// 게시판구분코드 (구직, 0004) 세팅
				break;
		}
		param.setBoardSeCd(boardSeCd);
		resultList = communityService.selectCommunityList(param);
		model.addAttribute("resultList", resultList);
		// model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("pageInfo", new PageInfo<>(resultList));
		model.addAttribute("boardSeCd", boardSeCd);	
		model.addAttribute("boardSeNm", boardSeNm);
		return "community/selectList";
	}
	/**
	 * Community 공지사항 게시글 목록 조회
	 * @param Model
	 * @return String
	 */
	/*@GetMapping("notice")
	public String selectNoticeList(Model model) {
		List<Community> resultList = new ArrayList<Community>();
		Community param = new Community();
		param.setBoardSeCd(CmmConstant.BoardSeCd.NOTI); // 게시판구분(공지사항, 0001) 세팅
		
		*//** 게시글 목록 조회 *//*
		resultList = communityService.selectCommunityList(param);
		model.addAttribute("resultList", resultList);
		model.addAttribute("boardSeCd", param.getBoardSeCd()); // 게시판구분(공지사항, 0001)
		
		LOG.info("================= noticeList: [{}]", resultList);
		
		return "community/selectList";
	}*/
	
	/**
	 * Community 게시글 상세 조회
	 * @param Model, boardNo
	 * @return String
	 */
	@GetMapping("select-dtl-cont/{boardNo}")
	public String selectDtlCont(Model model, HttpServletRequest req, HttpServletResponse res, @PathVariable int boardNo) {
		Community community = new Community();
		Community param = new Community();
		param.setBoardNo(boardNo); // 게시글번호 세팅
		
		Map map = new HashMap<>();
		/** 쿠키 조회 */
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (int i=0; i<cookies.length; i++) {
				Cookie cookie = cookies[i];
				map.put(cookie.getName(), cookie.getValue());
			}
		}
		
		// 저장된 쿠키중에 read_count 만 불러오기
	    String readCount = (String) map.get("read_count");
	     // 저장될 새로운 쿠키값 생성
	    String newReadCount = "|" + boardNo;

	    // 저장된 쿠키에 새로운 쿠키값이 존재하는 지 검사
	    if (StringUtils.indexOfIgnoreCase(readCount, newReadCount) == -1) {
	          // 없을 경우 쿠키 생성
	          Cookie cookie = new Cookie("read_count", readCount + newReadCount);
	          
	          res.addCookie(cookie);
	          communityService.boardRfncCnt(param); // 업데이트 실행
	    }

		/** 게시글 상세 조회 */
		community = communityService.selectDtlCont(param);
		model.addAttribute("community", community);
		
		/* 게시글 댓글 목록 조회 */
		List<CmReply> replyList = communityService.getReplyList(param);
		if (replyList != null) {
			model.addAttribute("replyList", replyList);
		}
		
		LOG.info("================== Detail Cont Result : {}", community);
		
		return "community/readDtlCont";
	}
	
	/**
	 * Community 게시글 작성 페이지
	 * @param : Model, boardSeCd
	 * @return: String
	 */
	@GetMapping("insert-cont/{boardSeCd}")
	public String insertCont(Model model, @PathVariable String boardSeCd) {
		String boardSeNm = "";
		
		/** 게시판 타입별 게시판구분코드 세팅 */
		switch (boardSeCd) {
			// 공지사항(notice)
			case CommonConstant.BoardSeCd.NOTI : 
				boardSeNm = CommonConstant.BoardSeNm.NOTI; // 게시판구분코드 (공지사항, 0001) 세팅
				break;
			// Q&A(qna)
			case CommonConstant.BoardSeCd.QNA :
				boardSeNm = CommonConstant.BoardSeNm.QNA;	// 게시판구분코드 (Q&A, 0002) 세팅
				break;
			// 포럼(frum)
			case CommonConstant.BoardSeCd.FRUM :
				boardSeNm = CommonConstant.BoardSeNm.FRUM;	// 게시판구분코드 (포럼, 0003) 세팅
				break;
			// 구직(jobs)
			case CommonConstant.BoardSeCd.JOBS :
				boardSeNm = CommonConstant.BoardSeNm.JOBS;	// 게시판구분코드 (구직, 0004) 세팅
				break;
		}
		
		/** 게시판구분코드 목록 조회 */
		List<Code> boardSeList = codeService.findByGroupCode(BoardSeCd.COMM_GRP_CD); // CM001
		model.addAttribute("boardSeList", boardSeList);
		model.addAttribute("boardSeCd", boardSeCd); // 게시판구분(CM001)
		model.addAttribute("boardSeNm", boardSeNm); // 게시판구분코드명
		
		LOG.info("================== BOARD_SE_CD : {}", boardSeCd);
		LOG.info("=================== BOARD_SE_NM : {}", boardSeNm);
		return "community/createCont";
	}
}
