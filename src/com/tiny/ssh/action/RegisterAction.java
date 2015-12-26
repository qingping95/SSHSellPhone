package com.tiny.ssh.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.User;
import com.tiny.ssh.forms.UserForm;
import com.tiny.ssh.service.UserManager;

public class RegisterAction extends ActionSupport {

    private static final long serialVersionUID = 1L;

    private UserForm user;

    private UserManager userManager;

    public UserForm getUser() {
        return user;
    }

    public void setUser(UserForm user) {
        this.user = user;
    }
    public UserManager getUserManager() {
    	return userManager;
    }
    public void setUserManager(UserManager userManager) {
        this.userManager = userManager;
    }

    public String execute() {
    	if(userManager.isExist(user.getUsername())) {
    		return ERROR;
    	}else{
    		userManager.regUser(user);
    		return SUCCESS;
    	}
    }

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
		if(userManager.isExist(user.getUsername())) {
			addFieldError("usernameError", "用户名已存在，请重新输入");
    	}
	}

}