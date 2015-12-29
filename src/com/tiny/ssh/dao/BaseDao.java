package com.tiny.ssh.dao;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;

import com.tiny.ssh.beans.User;

public interface BaseDao<T> {
    public void saveObject(T obj) throws HibernateException;
    public boolean isExist(String username);
    public boolean isCorrect(User user);
    public SQLQuery getObject(String sql);
}