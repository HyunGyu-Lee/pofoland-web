/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.community.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.community.domain.Community;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * 커뮤니티 Dao
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */

@Mapper
public interface CommunityDAO extends CommonDAO<Integer, Community> {
	
	/**
	 * Community 게시글 목록 조회
	 * 
	 * @param : Community(BoardSeCd)
	 * @return: List
	 */
	public List<Community> findList(Community community);
	
	/**
	 * Community 상세 조회
	 * 
	 * @param : Community(BoardNo)
	 * @return: Community
	 */
	public Community findOne(Community community);
}
