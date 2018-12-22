package employmentservices.service.seeker;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.seeker.ExperienceDetailDao;
import employmentservices.model.seeker.ExperienceDetail;

@Service("experienceDetailService")
@Transactional
public class ExperienceDetailService {
	@Autowired
	private ExperienceDetailDao dao;

	public List<ExperienceDetail> findAll() {
		return dao.findAll();
	}

	public ExperienceDetail findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
	
	public void save(@Valid ExperienceDetail education) {
		dao.save(education);
	}
	
	public void deleteById(int id) {
		dao.deleteById(id);
	}
}
