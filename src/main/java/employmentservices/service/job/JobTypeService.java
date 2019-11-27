package employmentservices.service.job;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.job.JobTypeDao;
import employmentservices.model.job.JobType;

@Service("jobTypeService")
@Transactional
public class JobTypeService {
	@Autowired
    private JobTypeDao dao;
	public List<JobType> findAll()
	{
		return dao.findAll();
	}
	public JobType findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
}
