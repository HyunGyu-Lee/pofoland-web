/**
 * HST Inc. | https://www.hst.com
 * Copyright (c)2018, HST Inc.
 * All rights reserved.
 */
package com.hst.pofoland.biz.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hst.pofoland.biz.board.service.ForumService;
import com.hst.pofoland.biz.board.vo.ForumVO;

/**
 * 커뮤니티 Controller
 *
 * @author YP
 * @since 2018. 7. 8.
 * @see
 */
@RestController
@RequestMapping("/board/forum")
public class ForumController {

	@Resource(name="forumService")
	ForumService forumService;	// 포럼 서비스
	
	@GetMapping("/selectForumList")
	public String selectForumList(Model model) {
		List<ForumVO> resultList = new ArrayList<ForumVO>();
		
		resultList = forumService.selectForumList();
		model.addAttribute("forumList", resultList);
		return "board/forumList";
	}
}
