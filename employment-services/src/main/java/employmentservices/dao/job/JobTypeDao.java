package employmentservices.dao.job;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.job.JobType;

@Repository
public interface JobTypeDao  extends JpaRepository<JobType, Integer>{

}
