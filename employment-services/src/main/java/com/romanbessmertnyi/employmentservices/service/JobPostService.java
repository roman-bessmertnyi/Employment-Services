package com.romanbessmertnyi.employmentservices.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.romanbessmertnyi.employmentservices.dao.JobPostDao;
import com.romanbessmertnyi.employmentservices.model.JobPost;

@Service("jobPostService")
@Transactional
public class JobPostService {
	@Autowired
	private JobPostDao dao;

	public List<JobPost> searchBy(String key, String loc) {
		// return dao.findByJobType_JobTypeContainingOrJobDescriptionContaining(key,
		// key);
		return dao.searchBy(key, loc);
	}

	public List<JobPost> findAll() {
		return dao.findAll();
	}

	public JobPost findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}

	public void save(@Valid JobPost job) {
		dao.save(job);
	}
}
