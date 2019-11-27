package employmentservices.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import employmentservices.service.user.UserAccountService;

@Controller
public class AdminController {
	@Autowired
	UserAccountService userAccountService;
	
	@RequestMapping("/admin/home")
	public String adminHome(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_home";
	}
	
	@RequestMapping("/admin/locations")
	public String adminLocations(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_locations";
	}
	
	@RequestMapping("/admin/login/report")
	public String adminLoginReport(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_login_report";
	}
	
	@RequestMapping("/admin/manage/employers")
	public String adminManageEmployers(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_manage_employers";
	}
	
	@RequestMapping("/admin/manage/users")
	public String adminManageUsers(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_manage_users";
	}
	
	@GetMapping("/admin/test")
	public String adminTest(ModelMap model){
		return "admin_test";
	}
	
	@RequestMapping("/admin/settings")
	public String adminSettings(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_settings";
	}
	
	@RequestMapping("/admin/statistics")
	public String adminStatistics(ModelMap model){
		model.addAttribute("user", getPrincipal());
		return "admin_statistics";
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
