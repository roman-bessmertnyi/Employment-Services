package com.romanbessmertnyi.employmentservices.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.romanbessmertnyi.employmentservices.dao.JobTypeDao;
import com.romanbessmertnyi.employmentservices.model.JobType;

@Service("jobTypeService")
@Transactional
public class JobTypeService {
	@Autowired
    private JobTypeDao dao;
	public List<JobType> findAll()
	{
		return dao.findAll();
	}
	public JobType findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
}
