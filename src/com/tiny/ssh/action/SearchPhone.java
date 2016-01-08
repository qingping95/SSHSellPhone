package com.tiny.ssh.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.Phone;
import com.tiny.ssh.service.UserManager;

public class SearchPhone extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String searchOPT;
	private String searchINFO;
	private UserManager userManager;
	public String getSearchOPT() {
		return searchOPT;
	}
	public void setSearchOPT(String searchOPT) {
		this.searchOPT = searchOPT;
	}
	public String getSearchINFO() {
		return searchINFO;
	}
	public void setSearchINFO(String searchINFO) {
		this.searchINFO = searchINFO;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(searchINFO+":"+searchOPT);
		List<Phone> resultList = userManager.findPhoneBySearch(searchINFO, searchOPT);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("searchList", resultList);
		return SUCCESS;
	}
	
}
