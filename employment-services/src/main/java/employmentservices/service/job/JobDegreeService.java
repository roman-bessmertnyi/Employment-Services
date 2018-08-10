package employmentservices.service.job;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.job.JobDegreeDao;
import employmentservices.model.job.JobDegree;

@Service("jobDegreeService")
@Transactional
public class JobDegreeService {
	@Autowired
	private JobDegreeDao dao;

	public List<JobDegree> findAll() {
		return dao.findAll();
	}

	public JobDegree findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}

}
