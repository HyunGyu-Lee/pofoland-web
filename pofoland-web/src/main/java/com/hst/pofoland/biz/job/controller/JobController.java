package com.hst.pofoland.biz.job.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hst.pofoland.biz.job.service.JobService;

@Controller
public class JobController {
	@Autowired
	JobService jobService;
	
	@RequestMapping("/jobtest")
	public String jobList(Model model) {
		model.addAttribute("job", jobService.selectAll());
		return "job/job";
	}
}
