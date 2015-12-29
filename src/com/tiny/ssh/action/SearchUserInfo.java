package com.tiny.ssh.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.tiny.ssh.beans.Phone;
import com.tiny.ssh.beans.User;
import com.tiny.ssh.service.UserManager;

public class SearchUserInfo extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private String brand;
	private String password;
    private UserManager userManager;
    
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	
	public UserManager getUserManager() {
		return userManager;
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

	public String searchStart()
	{
		//System.out.println(userManager.getUser(username));
		List list = userManager.queryBrand(brand);
		if(list.isEmpty()){
			this.addFieldError("usernameError", "未找到该手机品牌的消息");;
			return "searchEnd";
		}
		List<Phone> phlist = list;
		Phone phone = (Phone)list.get(0);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("phlist", phlist);
		request.setAttribute("batteryCapacity", phone.getBatteryCapacity());
		request.setAttribute("camera", phone.getCamera());
		request.setAttribute("imageResolution", phone.getImageResolution());
		request.setAttribute("launchDate", phone.getLaunchDate());
		request.setAttribute("model", phone.getModel());
		request.setAttribute("prise", phone.getPrise());
		request.setAttribute("thickness", phone.getThickness());
		request.setAttribute("screenSize", phone.getScreenSize());
		request.setAttribute("imageResolution", phone.getImageResolution());
		request.setAttribute("RAM", phone.getRAM());
		request.setAttribute("ROM", phone.getROM());
		request.setAttribute("screenSize", phone.getScreenSize());
		request.setAttribute("weight", phone.getWeight());
		return "searchEnd";
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
		if(brand == null || "".equals(brand))
		{
			this.addFieldError("usernameError", "请输入查找内容");
		}
	}
}
