package com.romanbessmertnyi.employmentservices.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.romanbessmertnyi.employmentservices.dao.JobLocationDao;
import com.romanbessmertnyi.employmentservices.model.JobLocation;

@Service("jobLocationService")
@Transactional
public class JobLocationService {
	@Autowired
	private JobLocationDao dao;
	
	public List<JobLocation> findAll() {
		return dao.findAll();
	}

	public JobLocation findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}

	public void save(@Valid JobLocation loc) {
		dao.save(loc);
	}
}
