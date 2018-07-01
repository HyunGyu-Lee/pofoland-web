/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *  
 *
 * @author 이현규
 * @since 2018. 6. 16.
 * @see
 * 
 */
@Controller
public class TestController {

    @GetMapping("index")
    public String index() {
        return "main/main";
    }
    
    @GetMapping("aboutUs")
    public String aboutUs() {
        return "main/aboutUs";
    }
    
}
