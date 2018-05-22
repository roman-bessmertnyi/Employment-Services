package com.romanbessmertnyi.employmentservices.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.romanbessmertnyi.employmentservices.dao.CompanyDao;
import com.romanbessmertnyi.employmentservices.model.Company;

@Service("companyService")
@Transactional
public class CompanyService {
	@Autowired
	private CompanyDao dao;

	public List<Company> findAll() {
		return dao.findAll();
	}

	public Company findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
}
