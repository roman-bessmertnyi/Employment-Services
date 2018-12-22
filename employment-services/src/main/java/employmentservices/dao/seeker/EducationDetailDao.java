package employmentservices.dao.seeker;

import org.springframework.data.jpa.repository.JpaRepository;

import employmentservices.model.seeker.EducationDetail;

public interface EducationDetailDao extends JpaRepository<EducationDetail, Integer> {

}
