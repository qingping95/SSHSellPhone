package com.tiny.ssh.dao;

import java.util.List;
import org.hibernate.HibernateException;

public interface BaseDao {
    public void saveObject(Object obj) throws HibernateException;
    public boolean isExist(String username);
}