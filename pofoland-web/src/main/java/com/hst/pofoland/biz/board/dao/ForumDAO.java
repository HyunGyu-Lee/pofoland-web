/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.board.vo.Forum;
import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * 커뮤니티 Dao
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */

@Mapper
public interface ForumDAO extends CommonDAO<String, Code> {
	
	/**
	 * FORUM 게시글목록 조회
	 * 
	 * @param : N/A
	 * @return: List
	 */
	public List<Forum> findList();
}
