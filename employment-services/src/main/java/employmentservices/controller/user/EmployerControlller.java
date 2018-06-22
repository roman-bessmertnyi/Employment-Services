package employmentservices.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import employmentservices.filters.SearchFilter;
import employmentservices.model.job.JobType;
import employmentservices.service.company.CompanyService;
import employmentservices.service.job.LocationService;
import employmentservices.service.job.JobPostService;
import employmentservices.service.job.JobTypeService;

@Transactional
@Controller
public class EmployerControlller {
	
	
	@Autowired
	JobTypeService jobTypeService;
	
	@Autowired
	JobPostService jobPostService;
	
	@Autowired
	LocationService jobLocationService;
	
	@Autowired
	CompanyService companyService;
	
	@RequestMapping("/employer/home")
	public String employerHome(ModelMap model){
		SearchFilter<JobType> jobFilter = new SearchFilter<JobType>(null, null);
		model.addAttribute("jobFilter", jobFilter);
		return "home";
	}
}
