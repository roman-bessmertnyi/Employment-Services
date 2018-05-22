package com.romanbessmertnyi.employmentservices.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.romanbessmertnyi.employmentservices.model.JobFilter;
import com.romanbessmertnyi.employmentservices.model.JobPost;
import com.romanbessmertnyi.employmentservices.model.JobType;
import com.romanbessmertnyi.employmentservices.service.SeekerService;

@Controller
public class EmployerControlller {
	@Autowired
	SeekerService seekerService;
	
	@RequestMapping("/employer/home")
	public String employerHome(){
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
	
	@RequestMapping(value = "/employer/resume/advance", method = RequestMethod.GET)
	public String employerResumeAdvance(ModelMap model) {
		List<JobType> categories = seekerService.findAll();
		JobFilter jobFilter = new JobFilter(null, categories, "");
		model.addAttribute("jobFilter", jobFilter);

		List<JobPost> foundJobs = seekerService.findAll();
		model.addAttribute("foundJobs", foundJobs);

		return "employer_resume_advance";
	}

	@RequestMapping(value = "/employer/resume/advance", method = RequestMethod.POST)
	public String employerResumeAdvance(@Valid @ModelAttribute("jobFilter") JobFilter jobFilter, BindingResult result,
			ModelMap model) {
		List<JobPost> foundJobs = jobPostService.searchBy(jobFilter.getKeyword(), jobFilter.getLocation());
		model.addAttribute("jobFilter", jobFilter);
		System.out.println("Selected categories" + jobFilter.getChosenCategories());
		model.addAttribute("foundJobs", foundJobs);
		return "employer_resume_advance";
	}
	@RequestMapping("/employer/resume/search")
	public String employerResumeSearch(){
		return "employer_resume_search";
	}
}
