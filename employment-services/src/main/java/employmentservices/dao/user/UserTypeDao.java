package employmentservices.dao.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.user.UserType;

@Repository
public interface UserTypeDao extends JpaRepository<UserType, Integer> {
	public UserType findByUserTypeName(String type);
	
	/*public List<UserType> findAll() {
		CriteriaBuilder builder = getSession().getCriteriaBuilder();
		CriteriaQuery<UserType> cq = builder.createQuery(UserType.class);
		Root<UserType> root = cq.from(UserType.class);
		cq.select(root);
		Query<UserType> q = getSession().createQuery(cq);
		List<UserType> result = q.getResultList();
		return result;
	}

	public UserType findById(int id) {
		return getByKey(id);
	}

	public UserType findByType(String type) {
		CriteriaBuilder builder = getSession().getCriteriaBuilder();
		CriteriaQuery<UserType> cq = builder.createQuery(UserType.class);
		Root<UserType> root = cq.from(UserType.class);
		cq.select(root).where(builder.equal(root.get("user_type_name"), type));
		Query<UserType> q = getSession().createQuery(cq);
		UserType result = q.getSingleResult();
		return result;
	}*/
}
