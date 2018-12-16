package com.hst.pofoland.biz.user.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hst.pofoland.biz.portfolio.web.PortfolioController;
import com.hst.pofoland.biz.user.domain.User;
import com.hst.pofoland.common.mvc.domain.CommonApiResponse;
import com.hst.pofoland.common.mvc.web.CommonController;

import lombok.extern.slf4j.Slf4j;

/**
 * 사용자 관련 Controller
 *
 * @author YH
 * @since 2018. 10. 5.
 * @see
 *
 */
@Controller
@RequestMapping("user")
@Slf4j
public class UserController extends CommonController {
	
	// 생성자 
	public UserController() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 유저 일반 로그인 화면 조회
	 * 
	 * @return
	 */
	@GetMapping("login")
	public String login() {
		return "user/login";
	}
	
	/**
	 * 유저 일반 회원가입 화면 조회
	 * 
	 * @return
	 */
	@GetMapping("register")
	public String register() {
		return "user/register";
	}
	

}
