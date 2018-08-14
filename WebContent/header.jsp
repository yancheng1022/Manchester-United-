<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
注意加CSS:
<link rel="stylesheet" href="css/header.css" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

 -->

<div class="header3">
	 <div class="container2">
		 <div class="logo2">
			 <h1><a href="login.jsp">曼迷网</a></h1>
		 </div>	
		 <div class="top-menu">
			 <span class="menu"></span>
			  <ul>
				 <li class="active"><a href="frontIndex">首页</a></li>
				 <li><a href="allNews?currentPage=1">新闻中心</a></li>
				 <li><a href="picturesCenter?currentPage=1">图片中心</a></li>
				 <li><a href="videoCenter?currentPage=1">视频中心</a></li>
				 <li><a href="forum.jsp">球迷论坛</a></li>
				
			 </ul>			 
		 </div>			
		 <!-- script-for-menu -->
		 <script>
				$("span.menu").click(function(){
					$(".top-menu ul").slideToggle("slow" , function(){
					});
				});
		 </script>
		 <!-- script-for-menu -->	  	

		 <div class="clearfix"></div>
	 </div>
</div>