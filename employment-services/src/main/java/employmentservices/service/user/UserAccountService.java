package employmentservices.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.user.UserAccountDao;
import employmentservices.model.user.UserAccount;

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
        return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
    }
 
    public UserAccount findByEmail(String email) {
        return dao.findByEmail(email);
    }
}
