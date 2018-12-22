package employmentservices.service.seeker;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.seeker.EducationDetailDao;
import employmentservices.model.seeker.EducationDetail;

@Service("educationDetailService")
@Transactional
public class EducationDetailService {
	@Autowired
	private EducationDetailDao dao;

	public List<EducationDetail> findAll() {
		return dao.findAll();
	}

	public EducationDetail findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
	
	public void save(@Valid EducationDetail education) {
		dao.save(education);
	}
	
	public void deleteById(int id) {
		dao.deleteById(id);
	}
}
