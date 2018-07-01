/**
 * 
 */
package com.hst.pofoland.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hst.pofoland.biz.common.AbstractController;
import com.hst.pofoland.biz.delete.UserService;

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

    @Autowired
    private UserService userSerivice;
    
    @GetMapping("index")
    public String index() {
        return "main/main";
    }
    
    @GetMapping("aboutUs")
    public String aboutUs() {
        return "main/aboutUs";
    }
    
    @GetMapping("pofolands")
    public String pofolands(Model model) {
        model.addAttribute("users", userSerivice.findAll());
        
        return "main/pofolands";
    }
    
    @GetMapping("fakelogin")
    public void asd(HttpSession session) {

    }
    
}
