package com.tiny.ssh.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.Phone;
import com.tiny.ssh.service.UserManager;

public class productAction extends ActionSupport {
	private int phoneID = 45;
	UserManager umg;
	public int getPhoneID() {
		return phoneID;
	}

	public void setPhoneID(int phoneID) {
		this.phoneID = phoneID;
	}

	public UserManager getUmg() {
		return umg;
	}

	public void setUmg(UserManager umg) {
		this.umg = umg;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Phone product = umg.findPhoneByID(phoneID);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("product", product);
		return SUCCESS;
	}
}
