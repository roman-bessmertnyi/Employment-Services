package com.romanbessmertnyi.employmentservices.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.romanbessmertnyi.employmentservices.filters.SearchFilter;
import com.romanbessmertnyi.employmentservices.model.SeekerProfile;
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
		//List<SeekerProfile> seekers = seekerService.findAll();
		SearchFilter<SeekerProfile> seekerFilter = new SearchFilter<SeekerProfile>("", "");
		model.addAttribute("seekerFilter", seekerFilter);

		List<SeekerProfile> foundSeekers = seekerService.findAll();
		model.addAttribute("foundSeekers", foundSeekers);

		return "employer_resume_advance";
	}

	@RequestMapping(value = "/employer/resume/advance", method = RequestMethod.POST)
	public String employerResumeAdvance(@Valid @ModelAttribute("jobFilter") SearchFilter<SeekerProfile> seekerFilter, BindingResult result,
			ModelMap model) {
		List<SeekerProfile> foundSeekers = seekerService.searchBy(seekerFilter.getKeyword(), seekerFilter.getLocation());
		model.addAttribute("jobFilter", seekerFilter);
		model.addAttribute("foundJobs", foundSeekers);
		return "employer_resume_advance";
	}
	
	@RequestMapping("/employer/resume/search/{id}")
	public String employerResumeSearch(@PathVariable("id") int seekerId, ModelMap model){
		SeekerProfile seeker = seekerService.findById(seekerId);
		model.addAttribute("seeker", seeker);
		return "employer_resume_search";
	}
}
