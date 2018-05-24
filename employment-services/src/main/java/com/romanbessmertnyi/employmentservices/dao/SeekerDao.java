package com.romanbessmertnyi.employmentservices.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.SeekerProfile;

@Repository
public interface SeekerDao extends JpaRepository<SeekerProfile, Integer> {
	@Query("from SeekerProfile sp "
    		+ "where "
    		+ "(sp.first_name like %:key% "
    		+ "or sp.last_name like %:key% "
    		+ "or sp.description like %:key% "
    		+ "or institute_university_name in "
    		+ "(select institute_university_name from EducationDetail ed "
    		+ "where ed.institute_university_name like %:key% )) ")
	List<SeekerProfile> searchBy(@Param("key")String key);

}
