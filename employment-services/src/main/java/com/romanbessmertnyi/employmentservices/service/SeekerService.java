package com.romanbessmertnyi.employmentservices.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.romanbessmertnyi.employmentservices.dao.SeekerDao;
import com.romanbessmertnyi.employmentservices.model.SeekerProfile;

@Service("seekerService")
@Transactional
public class SeekerService {
	@Autowired
	private SeekerDao dao;

	/*public List<SeekerProfile> searchBy(String key, String loc) {
		// return dao.findByJobType_JobTypeContainingOrJobDescriptionContaining(key,
		// key);
		return dao.searchBy(key, loc);
	}*/

	public List<SeekerProfile> findAll() {
		return dao.findAll();
	}

	public SeekerProfile findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
}
