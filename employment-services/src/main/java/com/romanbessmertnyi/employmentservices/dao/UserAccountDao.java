package com.romanbessmertnyi.employmentservices.dao;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.romanbessmertnyi.employmentservices.model.UserAccount;

@Repository("userAccountDao")
public class UserAccountDao  extends AbstractDao<Integer, UserAccount>{
	public void save(UserAccount user) {
        persist(user);
    }
     
    public UserAccount findById(int id) {
        return getByKey(id);
    }
    
    public UserAccount findByEmail(String email) {
    	CriteriaBuilder builder = getSession().getCriteriaBuilder();
    	CriteriaQuery<UserAccount> cq = builder.createQuery(UserAccount.class);
    	Root<UserAccount> root = cq.from(UserAccount.class);
    	cq.select(root).where(builder.equal(root.get("email"), email));
    	UserAccount result = getSession().createQuery(cq).getSingleResult();
    	return result;
    }
}
