package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/login/user")
	public String loginUser(){
		return "login_user";
	}
	
	@RequestMapping("/register/user")
	public String registerUser(){
		return "register_user";
	}
	
	@RequestMapping("/login/employer")
	public String loginEmployer(){
		return "login_employer";
	}
	
	@RequestMapping("/register/employer")
	public String registerEmployer(){
		return "register_employer";
	}
}
