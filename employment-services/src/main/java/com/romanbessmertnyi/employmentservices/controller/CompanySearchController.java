package com.romanbessmertnyi.employmentservices.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.romanbessmertnyi.employmentservices.model.Company;
import com.romanbessmertnyi.employmentservices.service.CompanyService;

@Controller
public class CompanySearchController {
	@Autowired
	CompanyService companyService;
	
	@RequestMapping("/companies")
	public String companySearch(ModelMap model) {
		List<Company> companies = companyService.findAll();
		model.addAttribute("companies", companies);
		return "companies";
	}
	
	@RequestMapping("/companies/{id}")
	public String companyDetail(@PathVariable("id") int companyId, ModelMap model) {
		Company company = companyService.findById(companyId);
		model.addAttribute("company", company);
		model.addAttribute("foundJobs", company.getJob_posts());
		return "company";
	}
}
