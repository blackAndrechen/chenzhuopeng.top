package com.czpchen.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport implements SessionAware{
	private String username;
	private String password;
	private static final long serialVersionUID = 1L;
	protected Map<String ,Object> session;
	
	public String execute() {
		if(username==null||password==null) {
			return "login";
		}
		
		if(username.equals("admin")&&password.equals("admin")) {
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
}
