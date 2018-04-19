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
			String goURL = request.getServletPath();//����û���Ҫȥ�ĵ�ַ
			String param = request.getQueryString(); //��õ�ַ��Я���Ĳ���
			if(param != null) {
				goURL = goURL + "?" + param; //����ƴ�������ַ+����
			}
			//�ѵ�ǰ�ͻ���Ҫ���ʵĵ�ַ���洢��session��
			request.getSession().setAttribute("goURL", goURL);
			
			//�Ƿ�������ת����½ҳ��
			request.getSession().setAttribute("error", "�Ƿ��������¼��");
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
