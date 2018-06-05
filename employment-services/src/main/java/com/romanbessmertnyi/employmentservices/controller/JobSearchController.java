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
import com.romanbessmertnyi.employmentservices.model.JobPost;
import com.romanbessmertnyi.employmentservices.model.JobType;
import com.romanbessmertnyi.employmentservices.service.JobPostService;
import com.romanbessmertnyi.employmentservices.service.JobTypeService;

@Controller
public class JobSearchController {
	@Autowired
	JobPostService jobPostService;

	@Autowired
	JobTypeService jobTypeService;
	
	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public String JobsAdvance(ModelMap model) {
		SearchFilter<JobType> jobFilter = new SearchFilter<JobType>(null, null);
		model.addAttribute("jobFilter", jobFilter);

		List<JobPost> foundJobs = jobPostService.findAll();
		model.addAttribute("foundJobs", foundJobs);
		
		return "jobs";
	}
	
	@RequestMapping(value = "/jobs", method = RequestMethod.POST)
	public String findJobs(@Valid @ModelAttribute("jobFilter") SearchFilter<JobType> jobFilter, BindingResult result,
			ModelMap model) {
		List<JobPost> foundJobs = jobPostService.searchBy(jobFilter.getKeyword(), jobFilter.getLocation());
		model.addAttribute("jobFilter", jobFilter);
		model.addAttribute("foundJobs", foundJobs);
		return "jobs";
	}
	
	@RequestMapping("/jobs/{id}")
	public String jobsSearch(@PathVariable("id") int jobId, ModelMap model) {
		JobPost job = jobPostService.findById(jobId);
		System.out.println(job);
		model.addAttribute("job", job);
		return "job";
	}
}
