/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.biz.code.domain.GroupCode;
import com.hst.pofoland.common.mvc.dao.CommonDAO;

/**
 * 공통코드 관련 DAO
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Mapper
public interface CodeDAO extends CommonDAO<String, Code> {

    /**
     * 공통그룹코드 등록
     * 
     * @param groupCode 등록할 그룹코드
     */
    public void createGroupCode(GroupCode groupCode);
    
}
