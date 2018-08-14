<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>
	<title>视频中心</title>

		<link rel="stylesheet" href="css/header.css" type="text/css" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/videoCenter.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--//fonts-->
	
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<%@ include file="header.jsp"%>
<div class="strip">
	 <div class="container">
	 <div class="search">
		    <form action="picSearch?currentPage=1" method="post">
		    	<input type="text" name="name" value="" placeholder="搜视频">
				<input type="submit" value="">
			</form>
     </div>     
	
		<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="yukuVideo">
	<embed src="http://player.youku.com/player.php/sid/${video.url}/v.swf" quality="high" width="480" height="400" align="middle" allowScriptAccess="sameDomain" allowFullscreen="true" type="application/x-shockwave-flash"></embed>
	</div>
</body>
</html>