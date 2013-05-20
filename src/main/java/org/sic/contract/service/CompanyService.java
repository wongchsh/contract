package org.sic.contract.service;

import java.util.List;

import org.sic.contract.entity.Company;
import org.sic.contract.exception.SicException;

public interface CompanyService {
	Company findById(Long id);
	
	List<Company> queryByName(String companyName);
	
	void update(Company company);
	
	void deleteCompanyById(Long id);

	void addCompany(Company company) throws SicException;
}
