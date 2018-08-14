<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="/css/common.css"/>
   <link rel="stylesheet" type="text/css" href="/css/main.css"/>
  <script type="text/javascript" src="/js/libs/modernizr.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container clearfix">
	<%@ include file="left.jsp" %>
	
	 <div class="main-wrap">
	
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">图片中心</span></div>
        </div>
       
        <div class="result-wrap">
          <div class="result-content">
                <form action="addNewVideo" method="post" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                  		      <tr><th>新增视频:</th></tr>
                            <tr>
                                <th><i class="require-red">*</i>视频标题：</th>
                                <td>
                                    <input class="common-text required" id="title" name="title" size="50" value="" type="text">
                                </td>
                            </tr>
                            
                             <tr>
                                <th><i class="require-red">*</i>图片：</th>
                                <td><input type="file" name="newCenterVideo"/></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>封面图片路径：</th>
                                <td>
                                    <input class="common-text required" id="title" name="coverUrl" size="50" value="" type="text">
                                    
                                </td>
                            </tr>
                            
                             <tr>
                                <th><i class="require-red">*</i>视频路径：</th>
                                <td>
                                    <input class="common-text required" id="title" name="url" size="50" value="" type="text">
                                    
                                </td>
                            </tr>
                            
                            <tr>
                                <th><i class="require-red">*</i>视频内容：</th>
                                <td>
                                    <input class="common-text required" id="title" name="comment" size="50" value="" type="text">
                                    
                                </td>
                            </tr>
                          
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="发布" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody>
                     </table>
                </form>
            </div>




               
                <div class="result-content">
                    <table class="result-tab" width="100%">
                    	<tr><th>视频中心</th></tr>
                        <tr>
                         
                            <th>视频ID</th>
                            <th>视频标题</th>
                            <th>视频播放量</th>
                            <th>视频地址</th>
                            <th>视频内容</th>
                            <th>封面图片地址</th>
                            <th>删除操作</th>
                        </tr>
                        <c:forEach items="${pageBean.datas }" var="n">
                        <tr>
                   
                            <td>${n.vid }</td> 
                            <td>${n.title}</td>
                            <td>${n.count}</td> 
                             <td>${n.url}</td>
                              <td>${n.comment}</td> 
                               <td>${n.coverUrl}</td>  
                            <td><a href="delVideo?vid=${n.vid }">删除</a></td> 
                         
                            
                        </tr>
                       </c:forEach>
                    </table>
                    
                    
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
					<a href="${pageContext.request.contextPath }/showVideoCenter?currentPage=${pageBean.currentPage-1}" aria-label="Previous">
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
					<li><a href="${pageContext.request.contextPath }/showVideoCenter?currentPage=${page}">${page}</a></li>
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
					<a href="${pageContext.request.contextPath }/showVideoCenter?currentPage=${pageBean.currentPage+1}" aria-label="Next"> 
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