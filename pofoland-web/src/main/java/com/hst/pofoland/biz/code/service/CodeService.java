/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.code.dao.CodeDAO;
import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.biz.code.domain.GroupCode;
import com.hst.pofoland.common.mvc.service.CommonService;

/**
 * 공통코드 서비스
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Service
public class CodeService extends CommonService {

    private CodeDAO codeDao;
    
    @Autowired
    public CodeService(CodeDAO codeDao) {
        this.codeDao = codeDao;
    }
    
    /**
     * 공통그룹코드 등록
     * 
     * @param groupCode
     */
    @CacheEvict(value="codes", key="#groupCode.commGrpCd")
    public void createGroupCode(GroupCode groupCode) {
        codeDao.createGroupCode(groupCode);
    }
    
    /**
     * 공통코드 등록
     * 
     * @param code
     */
    @CacheEvict(value="codes", key="#code.commGrpCd")
    public void createCode(Code code) {
        codeDao.create(code);        
    }
    
    /**
     * 그룹코드에 해당하는 공톡코드 목록 조회
     * 
     * @param commGrpCd 그룹코드
     * @return
     */
    @Cacheable(value="codes", key="#commGrpCd")
    public List<Code> findByGroupCode(String commGrpCd) {
        return codeDao.findList(Code.builder().commGrpCd(commGrpCd).build());
    }
    
}
