package com.romanbessmertnyi.employmentservices.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.romanbessmertnyi.employmentservices.dao.UserAccountDao;
import com.romanbessmertnyi.employmentservices.model.UserAccount;

@Service("userAccountService")
@Transactional
public class UserAccountService {
	@Autowired
    private UserAccountDao dao;
     
    @Autowired
    private PasswordEncoder passwordEncoder;
 
     
    public void save(UserAccount user){
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        dao.save(user);
    }
     
    public UserAccount findById(int id) {
        return dao.findById(id);
    }
 
    public UserAccount findByEmail(String email) {
        return dao.findByEmail(email);
    }
}
