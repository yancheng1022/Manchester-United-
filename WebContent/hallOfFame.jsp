<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>名人堂</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/hallOfFame.css" rel="stylesheet" type="text/css" media="all" />	

</head>
<body>
<%@ include file="header.jsp"%>
<%@ include file="roll_head.jsp"%>
<div class="container">

		<c:forEach items="${pageBean.datas }" var="o">
			<div class="main">
					
					 <div class="col-md-4 men-grid">
						<a href="#"><img class="img-responsive" src="${o.img}" alt=""></a>
						<div class="col-mid">
							<p>${o.name}<br />票数：${o.ballot}</p> 
							
						</div>
						
						<ul class="col-at">
							<li><a href="vote2oldp?pid=${o.pid }&currentPage=${pageBean.currentPage}&user=${user.uid}"><img src="images/lo.png" alt=""> </a></li>
							
						</ul>	
						<%  
					        
					        String message = (String)request.getAttribute("message");  
					      
					    if(message == null){  
					        %>  
					  
					        <%  
					    }else{  
					        %>  
					             <script type="text/javascript">  
					                    alert("<%=message %>");  
					             </script>  
					        <%  
					        request.setAttribute("message", null);  
					    }  
					 %>  			
				    </div>				
		     </div>
	</c:forEach>
	
	<!--分页 -->
	<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
			<!-- 上一页 -->
			<!-- 判断当前页是否是第一页 -->
			<c:if test="${pageBean.currentPage==1 }">
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				<li>
					<a href="${pageContext.request.contextPath }/hallOfFame?currentPage=${pageBean.currentPage-1}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>	
			
			
			
		
			<c:forEach begin="1" end="${pageBean.totalPage+1 }" var="page">
				<!-- 判断当前页 -->
				<c:if test="${pageBean.currentPage==page }">
					<li class="active"><a href="javascript:void(0);">${page}</a></li>
				</c:if>
				<c:if test="${pageBean.currentPage!=page }">
					<li><a href="${pageContext.request.contextPath }/hallOfFame?currentPage=${page}">${page}</a></li>
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
					<a href="${pageContext.request.contextPath }/hallOfFame?currentPage=${pageBean.currentPage+1}" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
		
		</ul>
	</div>
	<!-- 分页结束 -->		
</div>
		

</body>
</html>