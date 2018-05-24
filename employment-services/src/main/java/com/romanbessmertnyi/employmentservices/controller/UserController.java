package com.romanbessmertnyi.employmentservices.controller;

import java.util.ArrayList;
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
import com.romanbessmertnyi.employmentservices.model.EducationDetail;
import com.romanbessmertnyi.employmentservices.model.JobPost;
import com.romanbessmertnyi.employmentservices.model.JobType;
import com.romanbessmertnyi.employmentservices.model.SeekerProfile;
import com.romanbessmertnyi.employmentservices.service.JobPostService;
import com.romanbessmertnyi.employmentservices.service.JobTypeService;

@Controller
public class UserController {
	@Autowired
	JobPostService jobPostService;

	@Autowired
	JobTypeService jobTypeService;

	@RequestMapping("/user/home")
	public String userHome() {
		return "user_home";
	}

	@RequestMapping(value = "/user/jobs/advance", method = RequestMethod.GET)
	public String userJobsAdvance(ModelMap model) {
		SearchFilter<JobType> jobFilter = new SearchFilter<JobType>(null, null);
		model.addAttribute("jobFilter", jobFilter);

		List<JobPost> foundJobs = jobPostService.findAll();
		model.addAttribute("foundJobs", foundJobs);

		return "user_jobs_advance";
	}

	@RequestMapping(value = "/user/jobs/advance", method = RequestMethod.POST)
	public String findJobs(@Valid @ModelAttribute("jobFilter") SearchFilter<JobType> jobFilter, BindingResult result,
			ModelMap model) {
		List<JobPost> foundJobs = jobPostService.searchBy(jobFilter.getKeyword(), jobFilter.getLocation());
		model.addAttribute("jobFilter", jobFilter);
		model.addAttribute("foundJobs", foundJobs);
		return "user_jobs_advance";
	}

	@RequestMapping("/user/jobs/search/{id}")
	public String userJobsSearch(@PathVariable("id") int jobId, ModelMap model) {
		JobPost job = jobPostService.findById(jobId);
		System.out.println(job);
		model.addAttribute("job", job);
		return "user_jobs_search";
	}

	@RequestMapping(value = "/user/resume", method = RequestMethod.GET)
	public String userResume(ModelMap model) {
		SeekerProfile seeker_profile = new SeekerProfile();
		EducationDetail education_detail = new EducationDetail();
		seeker_profile.setEducation_details(new ArrayList<EducationDetail>());
		seeker_profile.getEducation_details().add(education_detail);
		model.addAttribute("seeker_profile", seeker_profile);
		return "user_resume";
	}

	@RequestMapping("/user/profile")
	public String userProfile() {
		return "user_profile";
	}
}
