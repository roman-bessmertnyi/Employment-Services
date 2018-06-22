package employmentservices.dao.company;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.company.Company;

@Repository
public interface CompanyDao extends JpaRepository<Company, Integer> {

}