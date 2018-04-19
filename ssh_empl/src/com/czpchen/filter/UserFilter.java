package com.czpchen.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		
		if(request.getSession().getAttribute("user")==null) {
			String goURL = request.getServletPath();//获得用户想要去的地址
			String param = request.getQueryString(); //获得地址中携带的参数
			if(param != null) {
				goURL = goURL + "?" + param; //重新拼好请求地址+参数
			}
			//把当前客户想要访问的地址，存储到session中
			request.getSession().setAttribute("goURL", goURL);
			
			//非法请求，跳转到登陆页面
			request.getSession().setAttribute("error", "非法请求，请登录！");
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}else {
			arg2.doFilter(arg0, arg1);
		}
		
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	

}
