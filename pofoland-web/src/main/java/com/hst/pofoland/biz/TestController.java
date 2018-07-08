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

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hst.pofoland.common.components.CommonController;
import com.hst.pofoland.common.mvc.vo.CommonApiResponse;

/**
 *  TEST
 *
 * @author 이현규
 * @since 2018. 6. 16.
 * @see
 * 
 */
@Controller
public class TestController extends CommonController {

    @GetMapping("")
    public String root() {
        return redirect("index");
    }
    
    @GetMapping("index")
    public String index() {
        return "main/main";
    }
    
    @GetMapping("aboutUs")
    public String aboutUs() {
        return "main/aboutUs";
    }
    
    @GetMapping("fakelogin")
    public void asd(HttpSession session) {

    }
    
    @GetMapping("login")
    public String login() {
    	return "user/login";
    }
    
    @GetMapping("register") 
    public String register(){
    	return "user/register";
    }
    
    @GetMapping("testApi")
    @ResponseBody
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
