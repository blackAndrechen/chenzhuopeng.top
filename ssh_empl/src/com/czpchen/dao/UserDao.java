package com.czpchen.dao;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.czpchen.model.Dormessage;
import com.czpchen.model.User;

public class UserDao extends HibernateDaoSupport {
	/**
	 * �����ݿ��ȡָ��username��User����
	 * @param username
	 * @return
	 */
	public User getUser(String username) {
		String hql="from User where username=?";
		try {
			@SuppressWarnings("unchecked")
			List<User> lists = (List<User>)getHibernateTemplate().find(hql, username);
			if(lists!=null||!lists.isEmpty()) {
				return lists.get(0);
			}
			return null;
		}catch (Exception e) {
			return null;
		}
	}
	
}
