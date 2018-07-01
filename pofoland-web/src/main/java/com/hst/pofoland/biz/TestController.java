/**
 * 
 */
package com.hst.pofoland.biz;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.hst.pofoland.biz.common.AbstractController;

/**
 *  TEST
 *
 * @author 이현규
 * @since 2018. 6. 16.
 * @see
 * 
 */
@Controller
public class TestController extends AbstractController {

    @GetMapping("index")
    public String index() {
        return "main/main";
    }
    
    @GetMapping("aboutUs")
    public String aboutUs() {
        return "main/aboutUs";
    }
    
    @GetMapping("pofolands")
    public String pofolands() {
        return "main/pofolands";
    }
    
    @GetMapping("fakelogin")
    public void asd(HttpSession session) {

    }
    
}
