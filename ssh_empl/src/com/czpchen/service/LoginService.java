package com.czpchen.service;

import com.czpchen.dao.UserDao;
import com.czpchen.model.User;

public class LoginService {
	private UserDao userDao;
	/**
	 * 判断数据库是否有username用户,有的话判断密码是否正确
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean validate(String username,String password) {	
		User u = userDao.getUser(username);
		if(u==null) {
			return false;
		}
		if(password.equals(u.getPassword())) {
			return true;
		}else {
			return false;
		}
	}
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	
	
}
