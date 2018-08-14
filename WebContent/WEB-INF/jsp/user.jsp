<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
 <link rel="stylesheet" type="text/css" href="/css/common.css"/>
   <link rel="stylesheet" type="text/css" href="/css/main.css"/>
  <script type="text/javascript" src="/js/libs/modernizr.min.js"></script>
<title>用户管理</title>
</head>
<body>
<div class="container clearfix">
	<%@ include file="left.jsp" %>
	 <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">用户管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            
                            <th width="70">用户名:</th>
                            <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                         
                            <th>用户ID</th>
                            <th>用户名</th>
                            <th>密码</th>
                            <th>邮箱</th>
                           
                            <th>积分</th>
                            <th>注册时间</th>
                        </tr>
                        <c:forEach items="${pageBean.datas }" var="n">
                        <tr>
                   
                            <td>${n.uid }</td> <!--标签ID-->
                            <td>${n.username}</td>
                            <td>${n.password}</td> 
                            <td>${n.email}</td> 
                            <td>${n.integration}</td>
                            <td>${n.register_time}</td> 
                            
                        </tr>
                       </c:forEach>
                    </table>
                    
                </div>
            </form>
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
					<a href="${pageContext.request.contextPath }/userSystem?currentPage=${pageBean.currentPage-1}" aria-label="Previous">
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
					<li><a href="${pageContext.request.contextPath }/userSystem?currentPage=${page}">${page}</a></li>
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
					<a href="${pageContext.request.contextPath }/userSystem?currentPage=${pageBean.currentPage+1}" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
		
		</ul>
	</div>
	<!-- 分页结束 -->

</div>
        </div>
    </div>
    <!--/main-->

</body>
</html>