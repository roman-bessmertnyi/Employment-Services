package employmentservices.dao.company;

import org.springframework.data.jpa.repository.JpaRepository;

import employmentservices.model.company.EmployeeAmount;

public interface EmployeeAmountDao extends JpaRepository<EmployeeAmount, Integer> {

}
