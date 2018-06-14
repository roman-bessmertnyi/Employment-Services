package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.romanbessmertnyi.employmentservices.filters.SearchFilter;
import com.romanbessmertnyi.employmentservices.model.JobType;
import com.romanbessmertnyi.employmentservices.service.CompanyService;
import com.romanbessmertnyi.employmentservices.service.JobLocationService;
import com.romanbessmertnyi.employmentservices.service.JobPostService;
import com.romanbessmertnyi.employmentservices.service.JobTypeService;

@Transactional
@Controller
public class EmployerControlller {
	
	
	@Autowired
	JobTypeService jobTypeService;
	
	@Autowired
	JobPostService jobPostService;
	
	@Autowired
	JobLocationService jobLocationService;
	
	@Autowired
	CompanyService companyService;
	
	@RequestMapping("/employer/home")
	public String employerHome(ModelMap model){
		SearchFilter<JobType> jobFilter = new SearchFilter<JobType>(null, null);
		model.addAttribute("jobFilter", jobFilter);
		model.addAttribute("role", "employer");
		return "home";
	}
}
