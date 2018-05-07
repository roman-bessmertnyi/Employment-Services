package com.romanbessmertnyi.employmentservices.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.romanbessmertnyi.employmentservices.model.UserType;
import com.romanbessmertnyi.employmentservices.service.UserTypeService;

@Component
public class RoleToUserTypeConverter implements Converter<Object, UserType>{
	@Autowired
    UserTypeService userTypeService;
 
    /*
     * Gets UserProfile by Id
     * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
     */
    public UserType convert(Object element) {
        int id = Integer.parseInt((String)element);
        UserType profile= userTypeService.findById(id);
        System.out.println("Profile : "+profile);
        return profile;
    }
}
