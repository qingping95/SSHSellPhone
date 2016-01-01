package com.tiny.ssh.service;

import java.util.List;

import com.tiny.ssh.beans.User;
import com.tiny.ssh.forms.UserForm;

public interface UserManager<T> {
	public boolean isExist(String username);
    public void regUser(UserForm user);
    public boolean isCorrect(User user);
    public List<T> queryBrand(String Brand);
    public List<T> querySPObject(String Brand, String model);
    public List<T> querySomePhone(int num);
    public User getUser(String username);
}