/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hst.pofoland.biz.code.dao.CodeDAO;
import com.hst.pofoland.biz.code.domain.Code;
import com.hst.pofoland.biz.code.domain.GroupCode;

/**
 * 공통코드 서비스
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@Service
public class CodeService {

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
    public void createGroupCode(GroupCode groupCode) {
        codeDao.createGroupCode(groupCode);
    }
    
    /**
     * 공통코드 등록
     * 
     * @param code
     */
    public void createCode(Code code) {
        codeDao.create(code);        
    }
    
    /**
     * 그룹코드에 해당하는 공톡코드 목록 조회
     * 
     * @param commGrpCd 그룹코드
     * @return
     */
    public List<Code> findByGroupCode(String commGrpCd) {
        return codeDao.findList(Code.builder().commGrpCd(commGrpCd).build());
    }
    
}
