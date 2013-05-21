package org.sic.contract.action;

import com.opensymphony.xwork2.ActionSupport;

public class ContractBaseAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2116212249883028461L;
	
	protected String errMsg;
	
	public String getErrMsg(){
		return this.errMsg;
	}
	
	public void setErrMsg(String errMsg){
		this.errMsg = errMsg;
	}
}
