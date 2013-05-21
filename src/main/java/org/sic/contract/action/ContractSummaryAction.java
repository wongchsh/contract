package org.sic.contract.action;

import java.util.ArrayList;
import java.util.List;

import org.sic.contract.entity.Company;
import org.sic.contract.entity.Contract;
import org.sic.contract.service.CompanyService;
import org.sic.contract.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;

import com.mysql.jdbc.StringUtils;

public class ContractSummaryAction extends ContractBaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2895264004120627778L;
	
	@Autowired
	private ContractService contractService;
	
	@Autowired 
	private CompanyService companyService;
	
	private String companyName = "hh";
	
	private List<Contract> contracts = new ArrayList<Contract>();

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	public List<Contract> getContracts() {
		return contracts;
	}

	public void setContracts(List<Contract> contracts) {
		this.contracts = contracts;
	}
	
	
	public String queryContract(){
		
		if(!StringUtils.isNullOrEmpty(companyName)){
			List<Company> companies = companyService.queryByName(companyName);
			Long companyId = 1l;
			List<Contract> initiatedConracts = contractService.queryInitiatedByCompanyId(companyId);
			List<Contract> signedConracts = contractService.querySignedByCompanyId(companyId);
			contracts.addAll(initiatedConracts);
			contracts.addAll(signedConracts);
		}
		
		return SUCCESS;
	}

}
