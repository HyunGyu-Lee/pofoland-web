package com.hst.pofoland.biz.career.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hst.pofoland.biz.career.service.CareerService;



@Controller
public class CareerController {
	
	@Autowired
	CareerService careerService;
	
	@RequestMapping("/career/all")
	public String careerSearch(String keywords, Model model) {
		try {
			model.addAttribute("careerSearch", careerService.careerSearch(keywords));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "career/career";
	}
}
