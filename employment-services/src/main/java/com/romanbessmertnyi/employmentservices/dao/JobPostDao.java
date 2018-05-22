package com.romanbessmertnyi.employmentservices.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.JobPost;

@Repository
public interface JobPostDao extends JpaRepository<JobPost, Integer>{
    public List<JobPost> findByJobType_JobTypeContainingOrJobDescriptionContaining(String key, String key2);
    
    @Query("from JobPost jp "
    		+ "where "
    		+ "(jp.jobType.jobType like %:key% "
    		+ "or jp.jobDescription like %:key% "
    		+ "or jp.company.company_name like %:key% "
    		+ "or jp.company.profile_description like %:key%) "
    		+ "and "
    		+ "(jp.jobLocation.street_adress like %:loc% "
    		+ ")")
    public List<JobPost> searchBy(@Param("key")String key, @Param("loc")String loc);
}
