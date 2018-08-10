package employmentservices.service.company;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.company.BusinessStreamDao;
import employmentservices.model.company.BusinessStream;

@Service("businessStreamService")
@Transactional
public class BusinessStreamService {
	@Autowired
	private BusinessStreamDao dao;
	
	public List<BusinessStream> findAll() {
		return dao.findAll();
	}

	public BusinessStream findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
	
	public void save(@Valid BusinessStream businessStream) {
		dao.save(businessStream);
	}
	
	public void deleteById(int id) {
		dao.deleteById(id);
	}

}
