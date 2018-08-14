<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>
	<title>图片中心</title>

		<link rel="stylesheet" href="css/header.css" type="text/css" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/pictureCenter.css" rel="stylesheet" type="text/css" media="all" />

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
</head>
<body>
<!-- header -->
<%@ include file="header.jsp"%>
<!-- //header -->
<!-- banner -->
<div class="strip">
	 <div class="container">
	 <div class="search">
		    <form action="picSearch?currentPage=1" method="post">
		    	<input type="text" name="name" value="" placeholder="搜图片">
				<input type="submit" value="">
			</form>
     </div>     
	
		<div class="clearfix"></div>
		</div>
</div>
<!-- banner -->

	 <div class="container1">	
	
	

			<c:forEach items="${pageBean.datas }" var="n" >
				 <div class="lb-album">
				
						 <a href="${n.url }" target="_Blank">
						     <img src="${n.url }" class="img-responsive" alt="">
						
						 </a>
						  
				
					 		
				 </div>
			
			</c:forEach>
		
			 <div class="clearfix"> </div>
		  </div>
	


         <!--分页 -->
	<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
			<!-- 上一页 -->
			<!-- 判断当前页是否是第一页 -->
			
			<c:if test="${pageBean.currentPage ==1 }">
			
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				
				<li>
					<a href="${pageContext.request.contextPath }/picturesCenter?currentPage=${pageBean.currentPage-1}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>	
			
			
			
		
			<c:forEach begin="1" end="${pageBean.totalPage}" var="page">
				<!-- 判断当前页 -->
				<c:if test="${pageBean.currentPage==page }">
					<li class="active"><a href="javascript:void(0);">${page}</a></li>
				</c:if>
				<c:if test="${pageBean.currentPage!=page }">
					<li><a href="${pageContext.request.contextPath }/picturesCenter?currentPage=${page}">${page}</a></li>
				</c:if>
			
			</c:forEach>
			
			<!-- 判断当前页是否是最后一页 -->
			<c:if test="${pageBean.currentPage==pageBean.totalPage }">
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
				<li>
					<a href="${pageContext.request.contextPath }/picturesCenter?currentPage=${pageBean.currentPage+1}" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
		
		</ul>
	</div>
	<!-- 分页结束 -->
<!--footer-->

<!-- //footer -->
</body>
</html>