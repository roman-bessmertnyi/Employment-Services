package employmentservices.dao.job;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import employmentservices.model.job.JobPost;
import employmentservices.model.user.UserAccount;

@Repository
public interface JobPostDao extends JpaRepository<JobPost, Integer>{
    public List<JobPost> findByUserAccount(UserAccount postedBy);
    
    @Query("from JobPost jp "
    		+ "where "
    		+ "(jp.jobType.jobType like %:key% "
    		+ "or jp.description like %:key% "
    		+ "or jp.company.companyName like %:key% "
    		+ "or jp.company.description like %:key%) "
    		+ "and "
    		+ "(jp.location.city like %:loc% "
    		+ ")")
    public List<JobPost> searchBy(@Param("key")String key, @Param("loc")String loc);
}
