package com.romanbessmertnyi.employmentservices.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.JobType;

@Repository
public interface JobTypeDao  extends JpaRepository<JobType, Integer>{

}
