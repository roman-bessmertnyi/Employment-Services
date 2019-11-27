package employmentservices.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.user.UserTypeDao;
import employmentservices.model.user.UserType;

@Service("userTypeService")
@Transactional
public class UserTypeService {
	@Autowired
    UserTypeDao dao;
     
    public List<UserType> findAll() {
        return dao.findAll();
    }
 
    public UserType findByType(String type){
        return dao.findByUserTypeName(type);
    }
 
    public UserType findById(int id) {
        return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
    }
}
