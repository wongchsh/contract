package org.sic.contract.persistence;

import java.util.List;

import org.sic.contract.entity.Company;

public interface CompanyMapper {
	Company findById(Long id);
	
	Company findByName(String companyName);
	
	List<Company> queryByName(String companyName);
	
	void insert(Company company);
	
	void update(Company company);
	
	void deleteById(Long id);
}
