package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployerControlller {
	@RequestMapping("/employer/home")
	public String employer(){
		return "employer_home";
	}
	
	@RequestMapping("/employer/jobs/manage")
	public String employerJobsManage(){
		return "employer_jobs_manage";
	}
	
	@RequestMapping("/employer/jobs/post")
	public String employerJobsPost(){
		return "employer_jobs_post";
	}
	
	@RequestMapping("/employer/resume/advance")
	public String employerResumeAdvance(){
		return "employer_resume_advance";
	}
	
	@RequestMapping("/employer/resume/search")
	public String employerResumeSearch(){
		return "employer_resume_search";
	}
}
