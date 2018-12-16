/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.user.dao.UserDAO;
import com.hst.pofoland.biz.user.domain.User;

import lombok.extern.slf4j.Slf4j;

/**
 * class comment
 *
 * @author YH
 * @since 2018. 7. 1. 
 * @see
 */
@Service
@Slf4j
public class UserService {
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	UserDAO userDAO;
	
	/**
	 * 생성자
	 */
	public UserService() {
	}
	
	public int create(User user) {
		
		// 유저 패스워드 인코딩
		user.setUserPwd(passwordEncoder.encode(user.getUserPwd()));
		
		return userDAO.create(user);
	}
}
