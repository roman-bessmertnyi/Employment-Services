package employmentservices.service.company;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.company.CompanyDao;
import employmentservices.model.company.Company;

@Service("companyService")
@Transactional
public class CompanyService {
	@Autowired
	private CompanyDao dao;

	public List<Company> findAll() {
		return dao.findAll();
	}

	public Company findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
	
	public void save(@Valid Company company) {
		dao.save(company);
	}
	
	public void deleteById(int id) {
		dao.deleteById(id);
	}
}
