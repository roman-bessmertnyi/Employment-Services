package employmentservices.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import employmentservices.filters.SearchFilter;
import employmentservices.model.job.JobType;
import employmentservices.model.user.UserAccount;
import employmentservices.service.job.JobPostService;
import employmentservices.service.user.UserAccountService;

@Controller
public class HomeController {

	@Autowired
	UserAccountService userAccountService;
	
	@Autowired
	JobPostService jobPostService;
	
	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(ModelMap model) {
		int jobAmount = jobPostService.findAll().size();
		model.addAttribute("jobAmount", jobAmount);
		SearchFilter<JobType> jobFilter = new SearchFilter<JobType>(null, null);
		model.addAttribute("jobFilter", jobFilter);
		return "home";
	}

	@RequestMapping(value = "/login/user", method = RequestMethod.GET)
	public String loginUser() {
		return "users/login_user";
	}

	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/home";
    }
	
	@RequestMapping(value = "/register/user", method = RequestMethod.GET)
    public String newRegistration(ModelMap model) {
        UserAccount user = new UserAccount();
        model.addAttribute("user", user);
        return "users/register_user";
    }

    @RequestMapping(value = "/register/user", method = RequestMethod.POST)
    public String saveRegistration(@Valid @ModelAttribute("user")UserAccount user,
            BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            System.out.println("There are errors");
            result.getAllErrors().get(0).getDefaultMessage();
            for(ObjectError e: result.getAllErrors())
            {
            	System.out.println(e.getDefaultMessage());
            }
            return "users/register_user";
        }
        userAccountService.save(user);
         
        System.out.println("Email : "+user.getEmail());
        System.out.println("Password : "+user.getPassword());
        System.out.println("Type : "+user.getUserType());
        System.out.println("Enabled : "+user.isIsActive());
        System.out.println("Checking UsrProfiles....");
         
        model.addAttribute("success", "User " + user.getEmail() + " has been registered successfully");
        return "redirect:/home";
    }

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(ModelMap model) {
        return "403";
    }
}
