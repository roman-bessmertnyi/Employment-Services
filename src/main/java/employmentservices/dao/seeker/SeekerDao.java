package employmentservices.dao.seeker;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import employmentservices.model.seeker.SeekerProfile;

@Repository
public interface SeekerDao extends JpaRepository<SeekerProfile, Integer> {
	@Query("from SeekerProfile sp "
    		+ "where "
    		+ "(sp.firstName like %:key% "
    		+ "or sp.lastName like %:key% "
    		+ "or sp.description like %:key%) ")
	List<SeekerProfile> searchBy(@Param("key")String key);

}
