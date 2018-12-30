/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.community.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.code.service.CodeService;
import com.hst.pofoland.biz.community.dao.CommunityDAO;
import com.hst.pofoland.biz.community.domain.Community;
import com.hst.pofoland.common.constant.CommonConstant;

/**
 * 커뮤니티 Service
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */
@Service("CommunityService")
public class CommunityService {
	
	@Autowired
	CommunityDAO communityDao;	// 게시판 Dao
	
	@Autowired
	CodeService codeService; // 공통코드 서비스
	
	/**
	 * Community 게시글 목록 조회
	 * @param : N/A 
	 * @return: List
	 */
	public List<Community> selectCommunityList(Community params) {
		List<Community> resultList = new ArrayList<Community>();
		resultList = communityDao.findList(params);
		
		return resultList;
	}
	
	/**
	 * Community 게시글 상세 조회
	 * @param : Community(BoardSeCd)
	 * @return: Community
	 */
	public Community selectDtlCont(Community params) {
		Community result = new Community();
		result = communityDao.findOne(params);
		
		return result;
	}
	
	public int boardRfncCnt(Community params) {
		int updateResult = 0;
		updateResult = communityDao.boardRfncCnt(params);
		
		return updateResult;
	}
	public int createContent(Community params) {
		communityDao.createContent(params);
		return params.getBoardNo();
	}
}