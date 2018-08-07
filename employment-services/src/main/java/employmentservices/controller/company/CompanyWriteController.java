package employmentservices.controller.company;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import employmentservices.model.company.BusinessStream;
import employmentservices.model.company.Company;
import employmentservices.model.company.EmployeeAmount;
import employmentservices.model.job.JobPost;
import employmentservices.model.job.JobType;
import employmentservices.model.user.UserAccount;
import employmentservices.service.company.BusinessStreamService;
import employmentservices.service.company.CompanyService;
import employmentservices.service.company.EmployeeAmountService;
import employmentservices.service.job.LocationService;
import employmentservices.service.user.UserAccountService;

@Controller
public class CompanyWriteController {
	@Autowired
	CompanyService companyService;
	
	@Autowired
	BusinessStreamService businessStreamService;
	
	@Autowired
	EmployeeAmountService employeeAmountService;
	
	@Autowired
	LocationService companyLocationService;
	
	@Autowired
	UserAccountService userAccountService;
	
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
	
	@RequestMapping("/companies/manage")
	public String companiesManage(ModelMap model) {
		List<Company> postedCompanies = companyService.findAll();
		model.addAttribute("postedCompanies", postedCompanies);
		return "companies/companies_manage";
	}

	@RequestMapping("/companies/delete/{id}")
	public String companiesDelete(@PathVariable("id") int companyId, ModelMap model) {
		return "redirect:/companies/manage";
	}

	@RequestMapping("/companies/edit/{id}")
	public String companiesEdit(@PathVariable("id") int companyId, ModelMap model) {
		return "companies/post";
	}

	@RequestMapping(value = "/companies/post", method = RequestMethod.GET)
	public String companiesPost(ModelMap model) {
		
		List<BusinessStream> businessStreamList = businessStreamService.findAll();
		model.addAttribute("businessStreamList", businessStreamList);
		List<EmployeeAmount> employeeAmountList = employeeAmountService.findAll();
		model.addAttribute("employeeAmountList", employeeAmountList);
		
		Company company = new Company();
		model.addAttribute("company", company);
		
		return "companies/companies_post";
	}
	
	@RequestMapping(value = "/companies/post", method = RequestMethod.POST)
	public String companiesPost(@Valid @ModelAttribute("company") Company company, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			System.out.println("There are errors");
			for (ObjectError e : result.getAllErrors()) {
				System.out.println(e.getObjectName());
			}
			return "redirect:/home";
		}
		
		businessStreamService.save(company.getBusinessStream());
		companyLocationService.save(company.getLocation());
		companyService.save(company);
		
		List<BusinessStream> businessStreamList = businessStreamService.findAll();
		model.addAttribute("businessStreamList", businessStreamList);
		List<EmployeeAmount> employeeAmountList = employeeAmountService.findAll();
		model.addAttribute("employeeAmountList", employeeAmountList);
		
		return "companies/companies_post";
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
