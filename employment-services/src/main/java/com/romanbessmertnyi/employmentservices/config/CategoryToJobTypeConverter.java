package com.romanbessmertnyi.employmentservices.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.romanbessmertnyi.employmentservices.model.JobType;
import com.romanbessmertnyi.employmentservices.service.JobTypeService;

@Component
public class CategoryToJobTypeConverter implements Converter<Object, JobType>{
	@Autowired
    JobTypeService jobTypeService;
	
	public JobType convert(Object element) {
        int id = Integer.parseInt((String)element);
        JobType jobType= jobTypeService.findById(id);
        System.out.println("jobType : "+jobType);
        return jobType;
    }
}
