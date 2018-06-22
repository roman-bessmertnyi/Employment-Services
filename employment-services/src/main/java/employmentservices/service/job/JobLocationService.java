package employmentservices.service.job;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.job.JobLocationDao;
import employmentservices.model.job.JobLocation;

@Service("jobLocationService")
@Transactional
public class JobLocationService {
	@Autowired
	private JobLocationDao dao;
	
	public List<JobLocation> findAll() {
		return dao.findAll();
	}

	public JobLocation findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}

	public void save(@Valid JobLocation loc) {
		dao.save(loc);
	}
}
