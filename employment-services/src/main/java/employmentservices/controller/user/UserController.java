package employmentservices.controller.user;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import employmentservices.filters.SearchFilter;
import employmentservices.model.job.JobType;
import employmentservices.model.seeker.EducationDetail;
import employmentservices.model.seeker.SeekerProfile;
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
