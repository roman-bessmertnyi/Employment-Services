package com.romanbessmertnyi.employmentservices.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.romanbessmertnyi.employmentservices.model.Company;
import com.romanbessmertnyi.employmentservices.model.UserAccount;
import com.romanbessmertnyi.employmentservices.service.CompanyService;
import com.romanbessmertnyi.employmentservices.service.UserAccountService;

@Controller
public class HomeController {

	@Autowired
	UserAccountService userAccountService;
	
	@Autowired
	CompanyService companyService;

	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/login/user", method = RequestMethod.GET)
	public String loginUser() {
		return "login_user";
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
        return "register_user";
    }
 
    /*
     * This method will be called on form submission, handling POST request It
     * also validates the user input
     */
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
            return "register_user";
        }
        userAccountService.save(user);
         
        System.out.println("Email : "+user.getEmail());
        System.out.println("Password : "+user.getPassword());
        System.out.println("Type : "+user.getUserType());
        System.out.println("Enabled : "+user.isEnabled());
        System.out.println("Checking UsrProfiles....");
         
        model.addAttribute("success", "User " + user.getEmail() + " has been registered successfully");
        return "home";
    }

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "403";
    }
	

	@RequestMapping("/companies")
	public String registerUser(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		
		List<Company> companies = companyService.findAll();
		model.addAttribute("companies", companies);
		return "companies";
	}
	
	@RequestMapping("/company/detail/{id}")
	public String userJobsSearch(@PathVariable("id") int companyId, ModelMap model) {
		Company company = companyService.findById(companyId);
		model.addAttribute("company", company);
		model.addAttribute("foundJobs", company.getJob_posts());
		return "company_detail";
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
