package employmentservices.dao.job;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import employmentservices.model.job.JobDegree;

@Repository
public interface JobDegreeDao extends JpaRepository<JobDegree, Integer> {

}
