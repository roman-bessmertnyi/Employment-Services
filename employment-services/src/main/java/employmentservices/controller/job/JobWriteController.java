package employmentservices.controller.job;

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

import employmentservices.model.company.Company;
import employmentservices.model.job.JobPost;
import employmentservices.model.job.JobType;
import employmentservices.model.user.UserAccount;
import employmentservices.service.company.CompanyService;
import employmentservices.service.job.JobPostService;
import employmentservices.service.job.JobTypeService;
import employmentservices.service.job.LocationService;
import employmentservices.service.user.UserAccountService;

@Transactional
@Controller
public class JobWriteController {
	@Autowired
	JobTypeService jobTypeService;

	@Autowired
	JobPostService jobPostService;

	@Autowired
	LocationService jobLocationService;

	@Autowired
	CompanyService companyService;

	@Autowired
	UserAccountService userAccountService;

	@RequestMapping("/jobs/manage")
	public String jobsManage(ModelMap model) {
		UserAccount postedBy = userAccountService.findByEmail(getPrincipal());
		List<JobPost> postedJobs = jobPostService.findByPostedBy(postedBy);
		model.addAttribute("postedJobs", postedJobs);
		return "jobs/jobs_manage";
	}

	@RequestMapping("/jobs/delete/{id}")
	public String jobsDelete(@PathVariable("id") int jobId, ModelMap model) {
		jobPostService.deleteById(jobId);
		UserAccount postedBy = userAccountService.findByEmail(getPrincipal());
		List<JobPost> postedJobs = jobPostService.findByPostedBy(postedBy);
		model.addAttribute("postedJobs", postedJobs);
		return "jobs/jobs_manage";
	}

	@RequestMapping("/jobs/edit/{id}")
	public String jobsEdit(@PathVariable("id") int jobId, ModelMap model) {
		List<Company> companyList = companyService.findAll();
		model.addAttribute("companyList", companyList);
		List<JobType> jobTypeList = jobTypeService.findAll();
		model.addAttribute("jobTypeList", jobTypeList);
		JobPost job = jobPostService.findById(jobId);
		model.addAttribute("job", job);
		int posterId = userAccountService.findByEmail(getPrincipal()).getId();
		model.addAttribute("posterId", posterId);
		return "jobs/jobs_post";
	}

	@RequestMapping(value = "/jobs/post", method = RequestMethod.GET)
	public String jobsPost(ModelMap model) {
		List<Company> companyList = companyService.findAll();
		model.addAttribute("companyList", companyList);
		List<JobType> jobTypeList = jobTypeService.findAll();
		model.addAttribute("jobTypeList", jobTypeList);
		JobPost job = new JobPost();
		model.addAttribute("job", job);
		int posterId = userAccountService.findByEmail(getPrincipal()).getId();
		model.addAttribute("posterId", posterId);
		return "jobs/jobs_post";
	}

	@RequestMapping(value = "/jobs/post", method = RequestMethod.POST)
	public String jobsPost(@Valid @ModelAttribute("job") JobPost job, BindingResult result, ModelMap model) {
<<<<<<< HEAD
		
=======
>>>>>>> parent of a863b46... Fixed company view, company and job write
		if (result.hasErrors()) {
			System.out.println("There are errors");
			for (ObjectError e : result.getAllErrors()) {
				System.out.println(e.getObjectName());
			}
			return "redirect:/home";
		}
		
		jobLocationService.save(job.getLocation());
		jobPostService.save(job);

		List<Company> companyList = companyService.findAll();
		model.addAttribute("companyList", companyList);
		List<JobType> jobTypeList = jobTypeService.findAll();
		model.addAttribute("jobTypeList", jobTypeList);

		return "jobs/jobs_post";
	}

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

}
