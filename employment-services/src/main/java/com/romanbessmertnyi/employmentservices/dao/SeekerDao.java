package com.romanbessmertnyi.employmentservices.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.SeekerProfile;

@Repository
public interface SeekerDao extends JpaRepository<SeekerProfile, Integer> {

}
