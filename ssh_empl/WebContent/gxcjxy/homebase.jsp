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
    <link rel="icon" href="image/window/favicon.ico">
    <title>程序员小锅锅的网站</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
        html,body{
          width: 100%;
          height: 100%;
          font-family: "微软雅黑";
          background-image: url(../image/banner.jpg);
        }
        
        .formtable{
          position: relative;
          width: 434px;
          height: 34px;
          top: 180px;
        }

        .formtable div,.searchk input{
          display: inline-block;
          float: left;
          height: 34px;
        }

        .searchi{
          width:300px;
        }

        .describe{
          position: relative;
          top: 80px;
          width: 100%;
          height: 150px;
        }

        .describe p{
          position: relative;
          top: 40px;
          text-align: center;
          font-size: 20px;
        }

        .fontG{
          font-family: Fantasy;
        }

        h1{
          text-align: center;
        }

        .contain{
          min-height: 100%;
          height: auto;
          height: 100%;
          margin: 0 auto -4em;
        }
        footer{
            height:4em;
            background: #333;
        }

        footer p,footer span{
          color:#FFFFFF;
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
			<a class="navbar-brand" href="<%=basePath %>gxcjxy/home.jsp">C</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="<%=basePath %>gxcjxy/home.jsp">首页<span class="sr-only">(current)</span></a></li>
				<li><a href="<%=basePath %>gxcjxy/aboutme.jsp">关于我</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="https://github.com/blackAndrechen">view code</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="contain">
	<div class="describe">
		<h1 class="fontG">电费快速查</h1>
		<p>查询剩余电费&nbsp;&nbsp;</p><p>最近用电趋势&nbsp;&nbsp;</p><p>智能预测停电时间</p>
	</div>
	<center>
		<form class="formtable">
			<div>
				<select name="" id="select" class="form-control">
					<option value="相思湖">相思湖</option>
					<option value="明秀">明秀</option>
				</select>
			</div>
			<div class="searchk">  
				<input type="text" class="searchi" placeholder="请输入宿舍号 例:1a-101"/>  
				<input type="submit" class="searchs" value="查找">
			</div>
		</form>
	</center>
</div>

<footer>
  <!-- <p>本站暂未开发评论登入功能,如有需要你可以通过以下方式和我取得联系</p>
<span>邮箱:chenzhuopeng@qq.com</span><span>QQ:980163660</span><span>微信:扫码图片</span> -->
</footer>

    <script src="../js/jquery/jquery-3.3.1.min.js"></script>
    <script src="../js/bootstrap/js/bootstrap.min.js"></script>
  
</body>
</html>