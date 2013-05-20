package org.sic.contract.service;

import java.util.List;

import org.sic.contract.entity.Contract;
import org.sic.contract.exception.SicException;

public interface ContractService {
	
	List<Contract> queryInitiatedByCompanyId(Long companyId);
	
	List<Contract> querySignedByCompanyId(Long companyId);
	
	void update(Contract contract);
	
	void deleteById(Long id);

	Contract findById(Long id);

	void addContract(Contract contract) throws SicException;

	boolean verifyContract(Long id,String md5) throws SicException;
}
