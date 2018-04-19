package com.czpchen.DAO;

import java.util.List;



import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.czpchen.entity.TestUser;

public class TestDAO extends HibernateDaoSupport{
	
	public TestUser login(String username,String password) {
		String hql="from TestUser where username=? and password=?";
		@SuppressWarnings("unchecked")
		List<TestUser> users=(List<TestUser>)getHibernateTemplate().find(hql, username,password);
		if(users==null||users.isEmpty()) {
			return null;
		}else {
			System.out.println("成功登录："+users.get(0).getUsername()+"  "+users.get(0).getPassword());
			return users.get(0);
		}
	}
	@Transactional(readOnly=false)
	public boolean saveUser(String username,String password) {
		try{
			TestUser user = new TestUser();
			user.setUsername(username);
			user.setPassword(password);
			System.out.println(username+" --"+password);
			getHibernateTemplate().save(user);
			System.out.println("成功注册！");
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
}
