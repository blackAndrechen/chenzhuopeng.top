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
    <title>查询结果</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=basePath %>js/echarts.min.js"></script>
	<style type="text/css">
          html,body{
          width: 100%;
          height: 100%;
          font-family: "微软雅黑";
          background-image: url(<%=basePath %>image/banner.jpg);
          color:#222123;
        }

        .contain{
          position: relative;
          top:180px;
        }
        .contain span{
          font-size: 18px;
          font-weight: bold;
          color:red;
          font-style: inherit;
        }
	
		#strong{
			font-size:32px;
		}
		
		#main{
			position:relative;
			top:50px;
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


<center>
<div class="contain">
  
  <center>
    <p>
    宿舍<span>${dorid}</span>截止到<span>${mon}</span>月<span>${dat}</span>日
    剩余电量为<span id="strong">${endEle}</span>
  </p>
  <p>根据该宿舍最近用电情况,平均每日用电<span>${aver}</span>度,预计<span id="strong">${stopDay}</span>天后将停电</p>
<div id="main" style="width: 100%;height:400px;"></div>
</center>
</div>
</center>

    <script src="<%=basePath %>js/jquery/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath %>js/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
		var date = ${Date};
		var ele=${ele};
        // 指定图表的配置项和数据
        var option = {
        		textStyle:{
                    color:'#222123',
                  },
        		title: {
                     text: '用电趋势图',
                     textStyle:{
                    	 color:'#222123',
                    	 fontWeight:'bold',
                    	 align:'center'
                     }
                 },
        	    xAxis: {
        	        type: 'category',
        	        data: date,
        	        name:'日期',
        	        axisLabel:{
        	        	interval:0,
        	        	rotate:60,
        	        }
        	    },
        	    yAxis: {
        	        type: 'value',
        	        name:'用电/°C',
        	    },
        	    series: [{
        	        data: ele,
        	        type: 'line',
        	        smooth: true
        	    }]
        	};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        $(window).resize(function(){
            myChart.resize();    
         });
    </script>
</body>
</html>