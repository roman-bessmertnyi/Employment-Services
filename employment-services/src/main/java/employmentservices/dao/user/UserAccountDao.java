package employmentservices.dao.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.user.UserAccount;

@Repository
public interface UserAccountDao extends JpaRepository<UserAccount, Integer>{
	
    UserAccount findByEmail(String email);
	
	/*public void save(UserAccount user) {
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
    }*/
}
