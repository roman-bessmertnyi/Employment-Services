package com.romanbessmertnyi.employmentservices.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.romanbessmertnyi.employmentservices.filters.SearchFilter;
import com.romanbessmertnyi.employmentservices.model.SeekerProfile;
import com.romanbessmertnyi.employmentservices.service.SeekerService;

@Transactional
@Controller
public class ResumeSearchController {

	@Autowired
	SeekerService seekerService;
	
	@RequestMapping(value = "/resumes", method = RequestMethod.GET)
	public String employerResumeAdvance(ModelMap model) {
		//List<SeekerProfile> seekers = seekerService.findAll();
		SearchFilter<SeekerProfile> seekerFilter = new SearchFilter<SeekerProfile>("", "");
		model.addAttribute("seekerFilter", seekerFilter);

		List<SeekerProfile> foundSeekers = seekerService.findAll();
		model.addAttribute("foundSeekers", foundSeekers);

		return "resumes";
	}

	@RequestMapping(value = "/resumes", method = RequestMethod.POST)
	public String employerResumeAdvance(@Valid @ModelAttribute("jobFilter") SearchFilter<SeekerProfile> seekerFilter, BindingResult result,
			ModelMap model) {
		List<SeekerProfile> foundSeekers = seekerService.searchBy(seekerFilter.getKeyword(), seekerFilter.getLocation());
		model.addAttribute("seekerFilter", seekerFilter);
		model.addAttribute("foundSeekers", foundSeekers);
		return "resumes";
	}
	
	@RequestMapping("/resumes/{id}")
	public String employerResumeSearch(@PathVariable("id") int seekerId, ModelMap model){
		SeekerProfile seeker = seekerService.findById(seekerId);
		model.addAttribute("seeker", seeker);
		return "resume";
	}
}
