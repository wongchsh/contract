package org.sic.contract.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.sic.contract.entity.Contract;
import org.sic.contract.entity.Sequence;
import org.sic.contract.exception.SicException;
import org.sic.contract.persistence.ContractMapper;
import org.sic.contract.persistence.SequenceMapper;
import org.sic.contract.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;

public class ContractServiceImpl implements ContractService{
	private static Logger logger = Logger.getLogger(ContractServiceImpl.class);
	@Autowired
	private ContractMapper contractMapper;
	@Autowired
	private SequenceMapper sequenceMapper;
	@Override
	
	public void addContract(Contract contract) throws SicException {
		if(contract != null){
			try{
				Long id = sequenceMapper.getId("contractId");
				contract.setId(id);
				contractMapper.insert(contract);
				
				Sequence sequence = new Sequence();
				sequence.setName("contractId");
				sequence.setValue(id + 1);
				sequenceMapper.setId(sequence);
			}catch(Exception e){
				throw new SicException(e.getMessage());
			}
		}
	}

	@Override
	public Contract findById(Long id) {
		if(id != null){
			return contractMapper.findById(id);
		}
		return null;
	}

	@Override
	public List<Contract> queryInitiatedByCompanyId(Long companyId) {
		if(companyId != null){
			return contractMapper.queryInitiatedByCompanyId(companyId);
		}
		
		return new ArrayList<Contract>();
	}

	@Override
	public List<Contract> querySignedByCompanyId(Long companyId) {
		if(companyId != null){
			return contractMapper.querySignedByCompanyId(companyId);
		}
		
		return new ArrayList<Contract>();
	}

	@Override
	public void update(Contract contract) {
		if(contract != null){
			contractMapper.update(contract);
		}
	}

	@Override
	public void deleteById(Long id) {
		if(id != null){
			contractMapper.deleteById(id);
			contractMapper.deleteInitiatedById(id);
			contractMapper.deleteSignedById(id);
		}
	}

	@Override
	public boolean verifyContract(Long id, String md5) throws SicException {
		Contract contract = this.findById(id);
		if(contract != null){
			String storedMd5 = contract.getMd5();
			return storedMd5.equals(md5);
		}
		logger.error("合同不存在，ID " + id);
		throw new SicException("合同不存在，ID " + id);
	}

}
