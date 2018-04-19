<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<form action="query_ele" method="post">
		<s:select label="请选择你的校区" name="location" list="{'相思湖','明秀'}"></s:select>
		<input type="text" name="dorid">
		<input type="submit" value="提交">
	</form>
	${empty applicationScope.query_error?0:applicationScope.query_error}
</center>
</body>
</html>