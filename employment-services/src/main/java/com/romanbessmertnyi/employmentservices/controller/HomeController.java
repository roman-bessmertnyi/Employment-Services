package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/login/user", method = RequestMethod.GET)
	public String loginUser() {
		return "login_user";
	}

	@RequestMapping("/register/user")
	public String registerUser() {
		return "register_user";
	}

	@RequestMapping("/login/employer")
	public String loginEmployer() {
		return "login_employer";
	}

	@RequestMapping("/register/employer")
	public String registerEmployer() {
		return "register_employer";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "403";
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
