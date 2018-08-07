package employmentservices.service.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.company.EmployeeAmountDao;
import employmentservices.model.company.EmployeeAmount;

@Service("employeeAmountService")
@Transactional
public class EmployeeAmountService {
	@Autowired
	private EmployeeAmountDao dao;

	public List<EmployeeAmount> findAll() {
		return dao.findAll();
	}

	public EmployeeAmount findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
}
