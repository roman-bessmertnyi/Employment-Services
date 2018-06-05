package com.romanbessmertnyi.employmentservices.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.romanbessmertnyi.employmentservices.service.CompanyService;

@Controller
public class CompanyManageController {
	@Autowired
	CompanyService companyService;

}
