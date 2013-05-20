package org.sic.contract.service.impl;

import java.util.List;

import org.sic.contract.entity.Company;
import org.sic.contract.entity.Sequence;
import org.sic.contract.exception.SicException;
import org.sic.contract.persistence.CompanyMapper;
import org.sic.contract.persistence.SequenceMapper;
import org.sic.contract.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;

public class CompanyServiceImpl implements CompanyService{
	@Autowired
	private CompanyMapper companyMapper;
	
	@Autowired
	private SequenceMapper sequenceMapper;
	@Override
	public Company findById(Long id) {
		if(id != null){
			return companyMapper.findById(id);
		}
		return null;
	}

	@Override
	public List<Company> queryByName(String companyName) {
		if(companyName != null){
			
			return companyMapper.queryByName(companyName);
		}
		return null;
	}

	@Override
	public void addCompany(Company company) throws SicException {
		if(company != null){
			try{
				Long id = sequenceMapper.getId("companyId");
				company.setId(id);
				companyMapper.insert(company);
				
				Sequence sequence = new Sequence();
				sequence.setName("companyId");
				sequence.setValue(id + 1);
				sequenceMapper.setId(sequence);
			}catch(Exception e){
				throw new SicException(e.getMessage());
			}
		}
	}

	@Override
	public void update(Company company) {
		if(company != null){
			companyMapper.update(company);
		}
	}

	@Override
	public void deleteCompanyById(Long id) {
		if(id != null){
			companyMapper.deleteById(id);
		}
	}

}
