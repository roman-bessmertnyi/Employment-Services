package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin/home")
	public String adminHome(){
		return "admin_home";
	}
	
	@RequestMapping("/admin/locations")
	public String adminLocations(){
		return "admin_locations";
	}
	
	@RequestMapping("/admin/login/report")
	public String adminLoginReport(){
		return "admin_login_report";
	}
	
	@RequestMapping("/admin/manage/employers")
	public String adminManageEmployers(){
		return "admin_manage_employers";
	}
	
	@RequestMapping("/admin/manage/users")
	public String adminManageUsers(){
		return "admin_manage_users";
	}
	
	@RequestMapping("/admin/settings")
	public String adminSettings(){
		return "admin_settings";
	}
	
	@RequestMapping("/admin/statistics")
	public String adminStatistics(){
		return "admin_statistics";
	}
}
