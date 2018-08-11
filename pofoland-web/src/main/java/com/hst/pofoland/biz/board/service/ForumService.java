/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.board.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.board.dao.ForumDAO;
import com.hst.pofoland.biz.board.vo.Forum;

/**
 * 커뮤니티 Service
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */
@Service("forumService")
public class ForumService {
	
	@Autowired
	ForumDAO forumDao;	// 게시판 Dao
	
	public List<Forum> selectForumList() {
		List<Forum> resultList = new ArrayList<Forum>();
		
		resultList = forumDao.findList();
		
		return resultList;
	}
}