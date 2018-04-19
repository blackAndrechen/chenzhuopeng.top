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
    <title>HOME</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
        html,body{
          width: 100%;
          height: 100%;
          font-family: "微软雅黑";
          background-image: url(<%=basePath %>image/banner.jpg);
        }

        .searchi{
          width:160px;
          height: 27px;
        }

        .describe{
          position: relative;
          top: 80px;
          width: 100%;
          height: 150px;
        }

        h1{
          text-align: center;
          color:#e4fcf6;
        }

        .contain{
          min-height: 100%;
          height: auto;
          height: 100%;
          top: 180px;
          margin: 0 auto -4em;
        }

        .newform{
          position: relative;
          top: 200px;
          height: 34px;
        }

        .newform select{
          height:25px;
        }

        .special{
          position: relative;
          top: 45px;
          font-size: 20px;
          color: #e4fcf6;
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
        <li><a href="<%=basePath %>gxcjxy/aboutme.jsp">关于</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="https://github.com/blackAndrechen">view code</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="contain">
  <div class="describe">
      <center>
        <h1>电费快速查</h1>
        <table class="special">
          <tr>
            <td>查询剩余电费</td><td></td>
          </tr>
          <tr>
            <td>最近用电趋势</td><td></td>
          </tr>
          <tr>
            <td>预测停电时间</td><td></td>
          </tr>
        </table>
      </center>
    </div>

  <center>
      <form class="newform" method="post" action="query_ele">
          <select name="location" id="select" class="newselect">
            <option value="相思湖">相思湖</option>
            <option value="明秀">明秀</option>
        </select>
        <input type="text" class="searchi" name="dorid" placeholder="请输入宿舍号 例:1a-101"/>  
            <input type="submit" class="searchs" value="查询">
      </form>
  </center>
</div>
<!--<footer>
   <p>本站暂未开发评论登入功能,如有需要你可以通过以下方式和我取得联系</p>
<span>邮箱:chenzhuopeng@qq.com</span><span>QQ:980163660</span><span>微信:扫码图片</span> 
</footer>-->

    <script src="<%=basePath %>js/jquery/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath %>js/bootstrap/js/bootstrap.min.js"></script>
  
</body>
</html>