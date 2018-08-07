package employmentservices.dao.company;

import org.springframework.data.jpa.repository.JpaRepository;

import employmentservices.model.company.BusinessStream;

public interface BusinessStreamDao extends JpaRepository<BusinessStream, Integer> {

}
