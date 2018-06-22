package employmentservices.controller.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import employmentservices.model.company.Company;
import employmentservices.service.company.CompanyService;

@Controller
public class CompanyReadController {
	@Autowired
	CompanyService companyService;
	
	@RequestMapping("/companies")
	public String companySearch(ModelMap model) {
		List<Company> companies = companyService.findAll();
		model.addAttribute("companies", companies);
		return "companies/companies";
	}
	
	@RequestMapping("/companies/{id}")
	public String companyDetail(@PathVariable("id") int companyId, ModelMap model) {
		Company company = companyService.findById(companyId);
		model.addAttribute("company", company);
		model.addAttribute("foundJobs", company.getJobPosts());
		return "companies/company";
	}
}
