package com.tiny.ssh.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.Session;
import org.apache.struts2.ServletActionContext;
import org.hibernate.id.CompositeNestedGeneratedValueGenerator.GenerationContextLocator;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.Phone;
import com.tiny.ssh.service.UserManager;

public class IndexAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private UserManager userManager;
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("start");
		List<Phone> phlist = userManager.querySomePhone(12);
//		HttpServletRequest request = ServletActionContext.getRequest();
//		request.setAttribute("phlist", phlist);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("phlist", phlist);
		List newlist = (List)session.get("phlist");
		Phone phone = (Phone)newlist.get(0);
		System.out.println("拿到的信息为："+phone.getBrand());
		return "success";
	}
}