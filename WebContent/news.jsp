<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/Allnews.css" type="text/css" />
<link rel="stylesheet" href="css/header.css" type="text/css" />
	
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻中心</title>
</head>
<body>
<%@ include file="header.jsp"%>
				<div class="container">
 			      <div id="news_list">
 			   <ol>
	 			   <c:forEach var="n" items="${PageBean.datas}" >
	 			
	 			 	 	<li>
	 			 	 	
	 			 	 		<a href="news_page/${n.pid}" target="_blank" class="pc_count">
                           		 <img src="${n.cover}" alt="${n.title}">
                       	    </a>
	 			 	 	<h3>
	 			 	 		<a href="news_page/${n.pid}" target="_blank" class="pc_count">${n.title}</a>
	 			 	 	
	 			 	 	
	 			 	 	</h3>
	 			 	 	<p></p>
	 			 	 	<div class="info">
                            <div class="time">${n.date}</div>
                            
                        </div>
	 			 	 	
	 			 	 	
	 			 	 	</li>
	 			 	 					
	                 
				</c:forEach>
				 </ol>
				 	
             </div>
			</div>
			
		<!--分页 -->
	<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
			<!-- 上一页 -->
			<!-- 判断当前页是否是第一页 -->
			
			<c:if test="${PageBean.currentPage ==1 }">
			
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${PageBean.currentPage!=1 }">
				
				<li>
					<a href="${pageContext.request.contextPath }/allNews?currentPage=${pageBean.currentPage-1}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>	
			
			
			
		
			<c:forEach begin="1" end="${PageBean.totalPage}" var="page">
				<!-- 判断当前页 -->
				<c:if test="${pageBean.currentPage==page }">
					<li class="active"><a href="javascript:void(0);">${page}</a></li>
				</c:if>
				<c:if test="${pageBean.currentPage!=page }">
					<li><a href="${pageContext.request.contextPath }/allNews?currentPage=${page}">${page}</a></li>
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
					<a href="${pageContext.request.contextPath }/allNews?currentPage=${pageBean.currentPage+1}" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
		
		</ul>
	</div>
	<!-- 分页结束 -->		
</body>
</html>