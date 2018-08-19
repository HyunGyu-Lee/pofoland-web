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

import com.hst.pofoland.biz.community.dao.CommunityDAO;
import com.hst.pofoland.biz.community.domain.Community;
import com.hst.pofoland.constant.CmmConstant;

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
	
	/**
	 * Community 게시글 목록 조회
	 * @param : N/A 
	 * @return: List
	 */
	public List<Community> selectCommunityList(Community param) {
		List<Community> resultList = new ArrayList<Community>();
		resultList = communityDao.findList(param);
		
		return resultList;
	}
	
	/**
	 * Community 게시글 상세 조회
	 * @param : Community(BoardSeCd)
	 * @return: Community
	 */
	public Community selectDtlCont(Community param) {
		Community result = new Community();
		result = communityDao.findOne(param);
		
		return result;
	}
}