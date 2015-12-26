package com.tiny.ssh.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tiny.ssh.beans.User;
import com.tiny.ssh.dao.BaseDao;

public class UserDao implements BaseDao {
    
    private SessionFactory sessionFactory;  
      
    public SessionFactory getSessionFactory() {  
        return sessionFactory;  
    }  
  
    @Autowired  
    public void setSessionFactory(SessionFactory sessionFactory) {  
        this.sessionFactory = sessionFactory;  
    }  
  
    private Session getCurrentSession() {  
        return sessionFactory.openSession();  // ÐèÒªÓÃopenSession()
    }
    
	@Override
	public boolean isExist(String username) {
		// TODO Auto-generated method stub
		String sql = "select * from user where username = '"+username+"';";
		Query query=this.getCurrentSession().createSQLQuery(sql);
		List list = query.list();
		if(list.size() > 0) return true;
		else return false;
	}

	@Override
    public void saveObject(Object obj) throws HibernateException {
        this.getCurrentSession().save(obj);
    }

	@Override
	public boolean isCorrect(User user) {
		// TODO Auto-generated method stub
		String sql = "select * from user where username='"+user.getUsername()+"' and password='"+user.getPassword()+"';";
		Query query = this.getCurrentSession().createSQLQuery(sql);
		List list = query.list();
		if(list.size() == 1) return true;
		else return false;
	}

}