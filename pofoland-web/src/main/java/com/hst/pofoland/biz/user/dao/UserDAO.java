/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.user.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.user.domain.User;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * class comment
 *
 * @author YH
 * @since 2018. 7. 1. 
 * @see
 */
@Mapper
public interface UserDAO extends CommonDAO<String, User> {
	
    /**
     * 유저 정보 조회
     * 
     * @param user (유저 정보)
     * @return
     */
    public User findUserInfo(User user);
}
