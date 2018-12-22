package employmentservices.controller.seeker;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import employmentservices.model.seeker.SeekerProfile;
import employmentservices.service.seeker.SeekerService;
import employmentservices.service.user.UserAccountService;

@Transactional
@Controller
public class ResumeWriteController {

	//TODO: Add resume writing functionality
	
	//TODO: Merge seekers and resumes, it's a fucking headache I hate my life
	
	//TODO: Make form work with one education detail
	
	@Autowired
	SeekerService seekerService;
	
	@Autowired
	UserAccountService userAccountService;
	
	@RequestMapping(value = "/resumes/post", method = RequestMethod.GET)
	public String resumesPost(ModelMap model) {
		
		SeekerProfile seeker = new SeekerProfile();
		model.addAttribute("seeker", seeker);
		
		int posterId = userAccountService.findByEmail(getPrincipal()).getId();
		model.addAttribute("posterId", posterId);
		
		return "seekers/resumes_post";
	}
	
	@RequestMapping(value = "/resumes/post", method = RequestMethod.POST)
	public String jobsPost(@Valid @ModelAttribute("seeker") SeekerProfile seeker, BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			System.out.println("There are errors");
			for (ObjectError e : result.getAllErrors()) {
				System.out.println(e.getObjectName());
			}
			return "redirect:/home";
		}
		
		
		
		seekerService.save(seeker);

		return "seekers/resumes_post";
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
