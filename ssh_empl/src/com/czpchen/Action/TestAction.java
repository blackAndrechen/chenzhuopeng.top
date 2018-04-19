package com.czpchen.Action;

import com.czpchen.Service.TestService;
import com.opensymphony.xwork2.ModelDriven;

public class TestAction{
	private TestService testService;
	private String username;
	private String password;
	private String repassword;
	
	public String login() {
		System.out.println(username+" "+password);
		if(testService.login(username,password))
			return "success";
		else
			return "error";
	}
	
	public String register() {
		System.out.println(username+" "+password+"  "+repassword);
		if(username==null||password==null||repassword==null) {
			System.out.println("��Ϣ��ȫ����������д");
			return "error";
		}
		if(password==""||!password.equals(repassword)) {
			System.out.println("������������Ĳ�һ��");
			return "error";
		}
		if(testService.saveU(username,password))
			return "success";
		else
			System.out.println("���ݿ��쳣");
			return "error";
	}

	public TestService getTestService() {
		return testService;
	}

	public void setTestService(TestService testService) {
		this.testService = testService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
}
