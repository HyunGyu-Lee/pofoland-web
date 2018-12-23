package com.hst.pofoland.biz.careers.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hst.pofoland.biz.careers.service.CareersService;

@Controller
public class CareersController {
	@Autowired
	CareersService careersService;
	
	@RequestMapping("/jobtest")
	public String jobList(Model model) {
		model.addAttribute("job", careersService.selectAll());
		return "job/job";
	}
}
