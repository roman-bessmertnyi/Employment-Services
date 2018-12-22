package employmentservices.dao.seeker;

import org.springframework.data.jpa.repository.JpaRepository;

import employmentservices.model.seeker.ExperienceDetail;

public interface ExperienceDetailDao extends JpaRepository<ExperienceDetail, Integer> {

}
