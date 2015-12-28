package com.tiny.ssh.dao;

import java.util.List;
import org.hibernate.HibernateException;

import com.tiny.ssh.beans.User;

public interface BaseDao {
    public void saveObject(Object obj) throws HibernateException;
    public boolean isExist(String username);
    public boolean isCorrect(User user);
    public <T> List<T> getObject(String sql);
}