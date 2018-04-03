package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("/user/home")
	public String userHome(){
		return "user_home";
	}
	
	@RequestMapping("/user/jobs/advance")
	public String userJobsAdvance(){
		return "user_jobs_advance";
	}
	
	@RequestMapping("/user/jobs/search")
	public String userJobsSearch(){
		return "user_jobs_search";
	}
}
