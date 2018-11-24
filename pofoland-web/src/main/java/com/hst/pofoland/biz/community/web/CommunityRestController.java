/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.community.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hst.pofoland.biz.community.domain.Community;
import com.hst.pofoland.biz.community.service.CommunityService;
import com.hst.pofoland.common.mvc.domain.CommonApiResponse;
import com.hst.pofoland.common.mvc.web.CommonController;

/**
 * 커뮤니티 관리 REST Controller
 *
 * @author YP
 * @since 2018. 8. 19.
 * @see
 *
 */
@RestController
@RequestMapping("/api/community")
public class CommunityRestController extends CommonController {
	
	@Autowired
	private CommunityService communityService;
	
	private static final Logger LOG = LoggerFactory.getLogger(CommunityRestController.class);
	
	/**
	 * 커뮤니티 게시글 등록
	 * 
	 * @param community
	 * @return CommonApiResponse
	 */
	@PostMapping("createContent")
	public CommonApiResponse createContent(@RequestBody Community community) {
		LOG.info("==================== CREATE PARAMS : [{}]", community);
		/* TEST */
		community.setRegUserNo(2);
		community.setUpdUserNo(2);
		 
		int boardNo = communityService.createContent(community);
		
		return ok(boardNo);
	}

	@PostMapping("putContent")
	public CommonApiResponse putContent(@RequestBody Community community) {
		LOG.info("==================== PUT PARAMS: [{}]", community);
		/* TEST */
		community.setRegUserNo(2);
		community.setUpdUserNo(2);
		
		int updResult = communityService.createContent(community);
		// redirect
		return ok(updResult);
	}
}
