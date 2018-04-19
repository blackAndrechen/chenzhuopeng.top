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
    
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="<%=basePath %>assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=basePath %>assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=basePath %>assets/css/form-elements.css">
        <link rel="stylesheet" href="<%=basePath %>assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="<%=basePath %>assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath %>assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath %>assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath %>assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="<%=basePath %>assets/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
        html,body{
          background-image: url(<%=basePath %>image/banner.jpg);
        }
        
        h1,h3{
        	color:#140101;
        }
    </style>
    <title>管理员登录</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

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
<!--  
<div class="contain">
	<center>
	<form action="login" method="post">
		用户名：<input type="text" name="username"><br>
		密码：<input type="password" name="password"><br>
		<input type="submit" value="登录">
	</form>
	</center>
</div>
-->

 <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>后台登录</strong><!--  Admin Login--></h1>
                            <div class="description">
                            	<p>
                                    暂时仅支持管理员登入
	                            	<!-- This is a free responsive login form made with Bootstrap. 
	                            	Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like! -->
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to admin</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>${loginError}</h3>
                        	
                        	</div>
                    <!-- <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>
                        </div>
                    </div> -->
                </div>
            </div>
            
        </div>

<footer>
  <!-- <p>本站暂未开发评论登入功能,如有需要你可以通过以下方式和我取得联系</p>
<span>邮箱:chenzhuopeng@qq.com</span><span>QQ:980163660</span><span>微信:扫码图片</span> -->
</footer>

    <script src="<%=basePath %>js/jquery/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath %>js/bootstrap/js/bootstrap.min.js"></script>
  	<script src="<%=basePath %>assets/js/jquery.backstretch.min.js"></script>	
</body>
</html>