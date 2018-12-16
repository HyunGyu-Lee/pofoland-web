package com.hst.pofoland.biz.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hst.pofoland.biz.portfolio.service.PortfolioService;
import com.hst.pofoland.biz.user.domain.User;
import com.hst.pofoland.biz.user.service.UserService;
import com.hst.pofoland.common.constant.CommonConstant;
import com.hst.pofoland.common.mvc.domain.CommonApiResponse;
import com.hst.pofoland.common.mvc.web.CommonController;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/user")
@Slf4j
public class UserRestController extends CommonController {

    @Autowired
    private UserService userService;

    // 생성자
    public UserRestController() {
    }

    /**
     * 유저 회원가입
     * 
     * @return CommonApiResponse
     */
    @PostMapping
    public CommonApiResponse createUser(@RequestBody User user) {
    
        user.setUserJoinSeCd(CommonConstant.User.JoinCode.GENERAL);
        user.setUserSttCd(CommonConstant.User.SttsCode.NOMAL);
        
        int result = userService.create(user);
        
        if (result > 0) {
            return ok(result);
        } else {
            return badRequest("회원가입 오류", result);
        }
    }
    
//    /**
//     * 유저 로그인
//     * 
//     * @param user
//     * @return CommonApiResponse
//     */
//    @PostMapping(value = "login")
//    public CommonApiResponse loginUser(@RequestBody User user) {
//        
//        
//        
//        return ok(user);
//    }
}
