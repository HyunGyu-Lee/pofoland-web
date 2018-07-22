/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.hst.pofoland.biz.board.vo.ForumVO;

/**
 * 커뮤니티 Dao
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */

@Repository("forumDao")
public class ForumDao {
	
	SqlSessionTemplate s;
	
	public List<ForumVO> selectForumList() {
		List<ForumVO> resultList = s.selectList("selectForumList");
		return resultList;
	}
}
