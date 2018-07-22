/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hst.pofoland.biz.code.service.CodeService;
import com.hst.pofoland.biz.code.vo.Code;
import com.hst.pofoland.biz.code.vo.GroupCode;

import lombok.extern.slf4j.Slf4j;

/**
 * 공통코드 관련 테스트 케이스
 *
 * @author HG
 * @since 2018. 7. 8.
 * @see
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class CodeTest {

    @Autowired
    private CodeService codeService;
    
    private GroupCode groupCode;
    
    @Before
    public void setUp() {
        groupCode = new GroupCode();
        groupCode.setCommGrpCd("PF001");
        groupCode.setCommGrpCdNm("포트폴리오유형구분");
        groupCode.setCommGrpCdCont("포트폴리오의 유형을 의미하는 코드그룹");
        groupCode.setRegUserNo(1);
        groupCode.setUpdUserNo(1);
    }
    
    @Test
    public void 공통코드_조회테스트() {
        for (Code code : codeService.findByGroupCode("PF001")) {
            log.debug("{}", code);
        }
    }
    
    @Test
    @Ignore
    public void 그룹코드_등록테스트() {
        codeService.createGroupCode(groupCode);
    }
    
    @Test
    @Ignore
    public void 공통코드_등록테스트() {
        List<Code> codeList = new ArrayList<Code>();
        
        codeList.add(Code.builder()
                .commGrpCd(groupCode.getCommGrpCd())
                .commCd("01")
                .commCdNm("경영")
                .commCdCont("경영")
                .useYn("Y")
                .regUserNo(1)
                .updUserNo(1)
                .build());
        codeList.add(Code.builder()
                .commGrpCd(groupCode.getCommGrpCd())
                .commCd("02")
                .commCdNm("마케팅")
                .commCdCont("마케팅")
                .useYn("Y")
                .regUserNo(1)
                .updUserNo(1)
                .build());
        codeList.add(Code.builder()
                .commGrpCd(groupCode.getCommGrpCd())
                .commCd("03")
                .useYn("Y")
                .commCdNm("IT")
                .commCdCont("IT")
                .regUserNo(1)
                .updUserNo(1)
                .build());
        codeList.add(Code.builder()
                .commGrpCd(groupCode.getCommGrpCd())
                .commCd("04")
                .commCdNm("디자인")
                .commCdCont("디자인")
                .useYn("Y")
                .regUserNo(1)
                .updUserNo(1)
                .build());
        codeList.add(Code.builder()
                .commGrpCd(groupCode.getCommGrpCd())
                .commCd("05")
                .commCdNm("건설")
                .useYn("Y")
                .commCdCont("건설")
                .regUserNo(1)
                .updUserNo(1)
                .build());
        codeList.add(Code.builder()
                .commGrpCd(groupCode.getCommGrpCd())
                .commCd("06")
                .commCdNm("미디어·방송")
                .useYn("Y")
                .commCdCont("미디어·방송")
                .regUserNo(1)
                .updUserNo(1)
                .build());
        
        for (Code code : codeList) {
            codeService.createCode(code);
        }
    }
    
    
}
