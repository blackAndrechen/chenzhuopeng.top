package com.czpchen.Service;

import com.czpchen.DAO.TestDAO;
import com.czpchen.entity.TestUser;

public class TestService {
	private TestDAO testDAO;
	
	public boolean login(String username,String password) {
		TestUser user = new TestUser();
		user = testDAO.login(username, password);
		if(user!=null)
			return true;
		else
			return false;
	}
	
	public boolean saveU(String username,String password) {
		System.out.println(username+" "+password);
		boolean judge=testDAO.saveUser(username,password);
		if(judge)
			return true;
		else
			return false;
	}

	public TestDAO getTestDAO() {
		return testDAO;
	}

	public void setTestDAO(TestDAO testDAO) {
		this.testDAO = testDAO;
	}
}
