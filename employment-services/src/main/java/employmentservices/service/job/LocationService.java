package employmentservices.service.job;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.job.LocationDao;
import employmentservices.model.job.Location;

@Service("jobLocationService")
@Transactional
public class LocationService {
	@Autowired
	private LocationDao dao;
	
	public List<Location> findAll() {
		return dao.findAll();
	}

	public Location findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}

	public void save(@Valid Location loc) {
		dao.save(loc);
	}
}
