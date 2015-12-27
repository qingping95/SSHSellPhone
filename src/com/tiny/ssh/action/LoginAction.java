package com.tiny.ssh.action;

import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.User;
import com.tiny.ssh.forms.UserForm;
import com.tiny.ssh.service.UserManager;

public class LoginAction extends ActionSupport {
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

//    public String execute() {
//    	User curuser = new User();
//        BeanUtils.copyProperties(user, curuser);
//    	if(userManager.isCorrect(curuser)){
//    		return SUCCESS;
//    	}else{
//    		return ERROR;
//    	}
//    }

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
    	User curuser = new User();
        BeanUtils.copyProperties(user, curuser);
        if(!userManager.isCorrect(curuser)){
        	addFieldError("usernameError", "用户名或密码错误");
    	}
		
	}
}
