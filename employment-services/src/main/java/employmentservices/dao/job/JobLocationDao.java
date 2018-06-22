package employmentservices.dao.job;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.job.JobLocation;

@Repository
public interface JobLocationDao  extends JpaRepository<JobLocation, Integer>{

}
