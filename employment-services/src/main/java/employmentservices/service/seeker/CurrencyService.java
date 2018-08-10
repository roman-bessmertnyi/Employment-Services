package employmentservices.service.seeker;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employmentservices.dao.seeker.CurrencyDao;
import employmentservices.model.seeker.Currency;

@Service("currencyService")
@Transactional
public class CurrencyService {
	@Autowired
	private CurrencyDao dao;

	public List<Currency> findAll() {
		return dao.findAll();
	}

	public Currency findById(int id) {
		return dao.findById(id).orElseThrow(() -> new RuntimeException("Target not found"));
	}
}
