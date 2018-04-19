<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%   
String path = request.getContextPath();   
String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;   
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>注册界面</h1>
<center>
	<form action="testR.action" method="post">
		用户名：<input type="text" name="username"><br>
		密码：<input type="password" name="password"><br>
		重复输入密码：<input type="password" name="repassword"><br>
		<input type="submit" value="注册">
	</form>
</center>
</body>
</html>