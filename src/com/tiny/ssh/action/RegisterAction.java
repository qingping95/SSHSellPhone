package com.tiny.ssh.action;

import java.util.List;

import org.apache.catalina.connector.Request;

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

}