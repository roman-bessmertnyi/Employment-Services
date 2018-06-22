package employmentservices.controller.company;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import employmentservices.service.company.CompanyService;

@Controller
public class CompanyWriteController {
	@Autowired
	CompanyService companyService;

}
