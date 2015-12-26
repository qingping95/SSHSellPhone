package com.tiny.ssh.service;

import java.util.List;

import com.tiny.ssh.beans.User;
import com.tiny.ssh.forms.UserForm;

public interface UserManager {
	public boolean isExist(String username);
    public void regUser(UserForm user);
    public boolean isCorrect(User user);
}