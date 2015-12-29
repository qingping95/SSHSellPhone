package com.tiny.ssh.serviceImp;

import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.tiny.ssh.beans.Phone;
import com.tiny.ssh.beans.User;
import com.tiny.ssh.dao.BaseDao;
import com.tiny.ssh.forms.UserForm;
import com.tiny.ssh.service.UserManager;

public class UserManagerImpl<T> implements UserManager<T> {

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
	@Override
	public boolean isCorrect(User user) {
		// TODO Auto-generated method stub
		return dao.isCorrect(user);
	}
	@Override
	public List<T> queryBrand(String Brand) {
		// TODO Auto-generated method stub
		if(Brand == null || "".equals(Brand))
			return null;
		String sql = "select * from phone where brand='"+Brand+"'";
		return dao.getObject(sql).addEntity("phone", Phone.class).list();
	}
	@Override
	public List<T> querySPObject(String Brand, String model) {
		// TODO Auto-generated method stub
		if(Brand == null || "".equals(Brand) || model == null || "".equals(model))
			return null;
		String sql = "select * from phone where brand='"+Brand+"' and model='"+model+"'";
		return dao.getObject(sql).addEntity("phone", Phone.class).list();
	}
	@Override
	public User getUser(String username) {
		// TODO Auto-generated method stub
		System.out.println(username);
		String sql = "select * from user where userName='"+username+"'";
		return (User)dao.getObject(sql).addEntity("user", User.class).list().get(0);
	}
}