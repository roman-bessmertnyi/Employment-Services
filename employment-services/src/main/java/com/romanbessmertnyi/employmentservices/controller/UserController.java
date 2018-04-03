package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("/home/user")
	public String indexUser(){
		return "home_user";
	}
	
	@RequestMapping("/jobs/advance")
	public String jobsAdvance(){
		return "jobs_advance";
	}
	
	@RequestMapping("/jobs/search")
	public String jobsSearch(){
		return "jobs_search";
	}
}
