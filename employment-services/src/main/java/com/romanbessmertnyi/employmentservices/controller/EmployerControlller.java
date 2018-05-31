package com.romanbessmertnyi.employmentservices.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.romanbessmertnyi.employmentservices.filters.SearchFilter;
import com.romanbessmertnyi.employmentservices.model.Company;
import com.romanbessmertnyi.employmentservices.model.JobPost;
import com.romanbessmertnyi.employmentservices.model.JobType;
import com.romanbessmertnyi.employmentservices.model.SeekerProfile;
import com.romanbessmertnyi.employmentservices.service.CompanyService;
import com.romanbessmertnyi.employmentservices.service.JobLocationService;
import com.romanbessmertnyi.employmentservices.service.JobPostService;
import com.romanbessmertnyi.employmentservices.service.JobTypeService;
import com.romanbessmertnyi.employmentservices.service.SeekerService;
import com.romanbessmertnyi.employmentservices.service.UserAccountService;

@Transactional
@Controller
public class EmployerControlller {
	@Autowired
	SeekerService seekerService;
	
	@Autowired
	JobTypeService jobTypeService;
	
	@Autowired
	JobPostService jobPostService;
	
	@Autowired
	JobLocationService jobLocationService;
	
	@Autowired
	CompanyService companyService;
	
	@Autowired
	UserAccountService userAccountService;
	
	@RequestMapping("/employer/home")
	public String employerHome(){
		return "employer_home";
	}
	
	@RequestMapping("/employer/jobs/manage")
	public String employerJobsManage(){
		return "employer_jobs_manage";
	}
	
	@RequestMapping(value = "/employer/jobs/post", method = RequestMethod.GET)
	public String employerJobsPost(ModelMap model){
		List<Company> companyList = companyService.findAll();
		model.addAttribute("companyList", companyList);
		List<JobType> jobTypeList = jobTypeService.findAll();
		model.addAttribute("jobTypeList", jobTypeList);
		JobPost job = new JobPost();
		model.addAttribute("job", job);
		int posterId = userAccountService.findByEmail(getPrincipal()).getId();
		model.addAttribute("posterId", posterId);
		return "employer_jobs_post";
	}
	
	@RequestMapping(value = "/employer/jobs/post", method = RequestMethod.POST)
    public String employerJobsPost(@Valid @ModelAttribute("job")JobPost job,
            BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            System.out.println("There are errors");
            for(ObjectError e: result.getAllErrors())
            {
            	System.out.println(e.getDefaultMessage());
            }
            return "employer_home";
        }
        jobLocationService.save(job.getJobLocation());
        jobPostService.save(job);
        
        List<Company> companyList = companyService.findAll();
		model.addAttribute("companyList", companyList);
		List<JobType> jobTypeList = jobTypeService.findAll();
		model.addAttribute("jobTypeList", jobTypeList);
        
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
	
	private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
}
