package com.romanbessmertnyi.employmentservices.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.Company;

@Repository
public interface CompanyDao extends JpaRepository<Company, Integer> {

}