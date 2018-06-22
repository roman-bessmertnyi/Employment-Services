package employmentservices.service.seeker;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.seeker.SeekerDao;
import employmentservices.model.seeker.SeekerProfile;

@Service("seekerService")
@Transactional
public class SeekerService {
	@Autowired
	private SeekerDao dao;

	/*public List<SeekerProfile> searchBy(String key, String loc) {
		// return dao.findByJobType_JobTypeContainingOrJobDescriptionContaining(key,
		// key);
		return dao.searchBy(key, loc);
	}*/

	public List<SeekerProfile> findAll() {
		return dao.findAll();
	}

	public SeekerProfile findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}

	public List<SeekerProfile> searchBy(String keyword, String location) {
		// TODO location
		return dao.searchBy(keyword);
	}
}
