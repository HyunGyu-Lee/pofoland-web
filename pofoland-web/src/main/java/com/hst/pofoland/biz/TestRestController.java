/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hst.pofoland.common.components.CommonController;
import com.hst.pofoland.common.mvc.vo.CommonApiResponse;

/**
 * 클래스에 설명을 적는다.
 *
 * @author HG
 * @since 2018. 7. 7.
 * @see
 *
 */
@RestController
@RequestMapping("/api")
public class TestRestController extends CommonController {
    
    @GetMapping("testApi")
    public CommonApiResponse executeTestAPI() {
        // Sample Data 생성
        List<Map<String, Object>> dataList = new ArrayList<>();
        
        for (int i = 0; i < 10; i++) {
            Map<String, Object> row = new HashMap<>();
            row.put("idx", i);
            row.put("value", Math.random());
            
            dataList.add(row);
        }
        
        // 응답
        return CommonApiResponse.builder()
                .responseCode(HttpStatus.OK)
                .payloads(dataList)
                .message("testAPI 수행 완료").build();
    }
    
}
