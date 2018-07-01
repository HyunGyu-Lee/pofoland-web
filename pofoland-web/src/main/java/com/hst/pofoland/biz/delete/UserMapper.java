/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.delete;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 7. 1.
 * @see
 *
 */
@Mapper
public interface UserMapper {

    List<User> findAll();
    
}   
