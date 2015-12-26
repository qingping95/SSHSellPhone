package com.tiny.ssh.serviceImp;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.tiny.ssh.beans.User;
import com.tiny.ssh.dao.BaseDao;
import com.tiny.ssh.forms.UserForm;
import com.tiny.ssh.service.UserManager;

public class UserManagerImpl implements UserManager {

    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }
    public BaseDao getDao(){
    	return dao;
    }
    @Override
    public void regUser(UserForm userForm) throws HibernateException {
        User user = new User();
        BeanUtils.copyProperties(userForm, user);
        dao.saveObject(user);
    }
	@Override
	public boolean isExist(String username) {
		// TODO Auto-generated method stub
		return dao.isExist(username);
	}

}