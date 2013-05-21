package org.sic.contract.action;

import org.sic.contract.entity.User;
import org.sic.contract.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;

public class LoginoutAction  extends ContractBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4412706955575508545L;
	@Autowired
	private UserService userService;
	
	private String userName;
	
	private String password;
	
	private String checkCode;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}
	
	public String login(){
		String arandom=(String)(ActionContext.getContext().getSession().get("random"));
		if(!arandom.equalsIgnoreCase(arandom)){
			this.setErrMsg("验证码输入错误");
			return ERROR;
		}
		User user = userService.findUserByName(userName);
		if(user != null){
			if(user.getPassword().equals(password)){
				ActionContext.getContext().getSession().put("authToken", user);
				return SUCCESS;
			}else{
				this.setErrMsg("密码错误");
				return ERROR;
			}
		}else{
			this.setErrMsg("用户名不存在");
			
			return ERROR;
		}
	}
	
	public String logout(){
		ActionContext.getContext().getSession().remove("authToken");
		return SUCCESS;
	}
}
