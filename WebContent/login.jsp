<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>登录</title>
<!-- Meta tag Keywords -->
<link rel="stylesheet" href="css/header.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Frequent Sign In Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/style3.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<!-- //css files -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>
<div class="banner-overlay-agileinfo">
		<!--header-->
		<div class="header-w3l">
			<h1><font color="black">登录页面</font></h1>
		</div>
		<!--//header-->
		<!--main-->
		<div class="main-w3layouts-agileinfo">
	           <!--form-stars-here-->
						<div class="wthree-form">
							<h2>请输入用户名和密码</h2>
							<form action="user_login" method="post">
								<div class="form-sub-w3">
									<input type="text" name="username" placeholder="Username " required="" />
								<div class="icon-w3">
									<i class="fa fa-user" aria-hidden="true"></i>
								</div>
								</div>
								<div class="form-sub-w3">
									<input type="password" name="password" placeholder="Password" required="" />
								<div class="icon-w3">
									<i class="fa fa-unlock-alt" aria-hidden="true"></i>
								</div>
								</div>
								<p class="forgot-w3ls">忘记密码?<a class href="#">点击这里</a></p>
								<p class="forgot-w3ls1">新用户?<a class href="register.jsp"> 点击这里</a></p>
								<div class="clear"></div>
								<div class="submit-agileits">
									<input type="submit" value="登录">
								</div>
							</form>

						</div>
				<!--//form-ends-here-->

		</div>
		<!--//main-->
		
		<!--//footer-->
	</div>
</body>
</html>