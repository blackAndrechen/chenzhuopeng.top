package com.czpchen.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.czpchen.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport implements SessionAware{
	private String username;
	private String password;
	private static final long serialVersionUID = 1L;
	protected Map<String ,Object> session;
	private LoginService loginService;
	
	public String execute() {
		if(username==null||password==null) {
			return "login";
		}
		
		if(loginService.validate(username, password)) {
			session.put("user", username);
			if(session.get("goURL")==null) {
				return "home";
			}
			return "goURL";
		}else {
			session.put("loginError", "用户名或密码错误");
			return "login";
		}
		
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

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	
}
