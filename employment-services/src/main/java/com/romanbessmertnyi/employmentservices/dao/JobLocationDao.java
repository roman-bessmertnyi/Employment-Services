package com.romanbessmertnyi.employmentservices.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.JobLocation;

@Repository
public interface JobLocationDao  extends JpaRepository<JobLocation, Integer>{

}
