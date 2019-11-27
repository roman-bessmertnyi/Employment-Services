package employmentservices.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import employmentservices.filters.SearchFilter;
import employmentservices.model.job.JobType;
import employmentservices.service.job.JobPostService;
import employmentservices.service.job.JobTypeService;

@Controller
public class UserController {
	@Autowired
	JobPostService jobPostService;

	@Autowired
	JobTypeService jobTypeService;

	@RequestMapping("/user/home")
	public String userHome(ModelMap model) {
		SearchFilter<JobType> jobFilter = new SearchFilter<JobType>(null, null);
		model.addAttribute("jobFilter", jobFilter);
		return "home";
	}

	@RequestMapping("/user/profile")
	public String userProfile() {
		return "user_profile";
	}
}
