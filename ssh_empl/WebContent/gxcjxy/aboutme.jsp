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
    <title>About</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
        html,body{
          width: 100%;
          height: 100%;
          font-family: "微软雅黑";
          background-image: url(<%=basePath %>image/banner.jpg);
        }
        
        .contain{
          	position: relative;
        	top:80px;
        }
        
        h1,p{
        	color:#FFFFFF;
        }
        
        .mess{
        	position:relative;
        	top:100px;
        }
        
        .mess p{
        	color:#121210;
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
			<a class="navbar-brand" href="<%=basePath %>login.jsp">C</a>
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
	<div class="formtable">
	<center>
		<h1>查询说明</h1>
		<div class="mess">
			<p>仅支持财院相思湖与明秀校区的电费查询</p>
        <p>相思湖校区查询格式为:楼号-宿舍号 &nbsp;如1a-101(相思湖楼号是已字母结尾的)</p>
        <p>明秀校区查询格式为:楼号-宿舍号&nbsp;如2-301(无字母,有些宿舍有东南西北标识,如19南-210,17-西2)</p>
        <p>具体宿舍对应表见学校官网,<a href="http://www01.gxufe.edu.cn:82/hqglc/type/000010000724.html">跳转查看</a></p>
		<br>
		</div>
	</center>
	</div>
</div>


<footer>
  <!-- <p>本站暂未开发评论登入功能,如有需要你可以通过以下方式和我取得联系</p>
<span>邮箱:chenzhuopeng@qq.com</span><span>QQ:980163660</span><span>微信:扫码图片</span> -->
</footer>

    <script src="<%=basePath %>js/jquery/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath %>js/bootstrap/js/bootstrap.min.js"></script>
  
</body>
</html>