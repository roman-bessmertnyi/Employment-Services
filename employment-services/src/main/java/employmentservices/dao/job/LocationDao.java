package employmentservices.dao.job;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.job.Location;

@Repository
public interface LocationDao extends JpaRepository<Location, Integer>{

}
