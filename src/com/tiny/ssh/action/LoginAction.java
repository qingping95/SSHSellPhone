package com.tiny.ssh.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.Phone;
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

    public String execute() {
    	User curuser = new User();
        BeanUtils.copyProperties(user, curuser);
    	if(userManager.isCorrect(curuser)){
    		System.out.println("start");
    		List<Phone> poplist = userManager.querySomePhone(4);
    		List<Phone> dislist = userManager.querySomePhone(4);
    		List<Phone> newlist = userManager.querySomePhone(4);
    		Map<String, Object> session = ActionContext.getContext().getSession();
    		session.put("poplist", poplist);
    		session.put("dislist", dislist);
    		session.put("newlist", newlist);
//    		List newlist = (List)session.get("phlist");
//    		Phone phone = (Phone)newlist.get(0);
//    		System.out.println("拿到的信息为："+phone.getBrand());
    		return SUCCESS;
    	}else{
    		return ERROR;
    	}
    }

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
