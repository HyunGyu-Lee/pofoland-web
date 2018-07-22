/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.board.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.board.dao.ForumDao;
import com.hst.pofoland.biz.board.vo.ForumVO;

/**
 * 커뮤니티 Service
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */
@Service("forumService")
public class ForumService {
	
	@Resource(name="forumDao")
	ForumDao forumDao;	// 게시판 Dao
	
	public List<ForumVO> selectForumList() {
		List<ForumVO> resultList = new ArrayList<ForumVO>();
		
		resultList = forumDao.selectForumList();
		
		return resultList;
	}
}
