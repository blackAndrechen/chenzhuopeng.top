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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<%=basePath %>image/window/favicon.ico">
    <title>错误查询</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
        html,body{
          width: 100%;
          height: 100%;
          font-family: "微软雅黑";
          background-image: url(<%=basePath %>image/banner.jpg);
          color:#FFFFFF;
        }
        
        .contain{
          	position: relative;
        	top:180px;
        }
        
        h1 p{
        	color:#FFFFFF;
        }
        
        .mess{
        	position:relative;
        	top:100px;
        }
        
        .mess p{
        	color:#FFFFFF;
        	font-size:15px;
        }
    </style>
</head>
<body>
	
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=basePath %>admin/home.jsp">C</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="<%=basePath %>gxcjxy/home.jsp">首页<span class="sr-only">(current)</span></a></li>
				<li><a href="<%=basePath %>gxcjxy/aboutme.jsp">关于</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="https://github.com/blackAndrechen/chenzhuopeng.top">view code</a></li>
			</ul>
		</div>
	</div>
</nav>


<div class="contain">
	<center>
	<h1>查询失败</h1>
		<div class="mess">
			<p>未找到该宿舍相关的电费信息</p>
	        <p>请检查你输入的宿舍号是否正确<a href="<%=basePath %>gxcjxy/aboutme.jsp">查询指南</a></p>
		</div>
	</center>
</div>


<footer>
  <!-- <p>本站暂未开发评论登入功能,如有需要你可以通过以下方式和我取得联系</p>
<span>邮箱:chenzhuopeng@qq.com</span><span>QQ:980163660</span><span>微信:扫码图片</span> -->
</footer>

    <script src="<%=basePath %>js/jquery/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath %>js/bootstrap/js/bootstrap.min.js"></script>
  
</body>
</html>