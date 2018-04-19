<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="uploadEle" method="post" enctype="multipart/form-data">
            <h1>更新数据库</h1>
            <br>选择文件：
            <input type="file" name="uploadExcel">
            <input type="submit" value="提交">
        </form>
        <br>
        <form action="create_table" method="post" enctype="multipart/form-data">
            <h1>创建数据库表</h1>
            <br>选择文件：
            <input type="file" name="uploadExcel">
            <input type="submit" value="提交">
        </form>
        <br>
</body>
</html>