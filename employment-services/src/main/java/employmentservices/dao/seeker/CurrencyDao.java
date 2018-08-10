package employmentservices.dao.seeker;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import employmentservices.model.seeker.Currency;

@Repository
public interface CurrencyDao extends JpaRepository<Currency, Integer> {

}
