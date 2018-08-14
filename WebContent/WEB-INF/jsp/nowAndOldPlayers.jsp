<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">球员更改</span></div>
        </div>
       
        <div class="result-wrap">
          
               
                <div class="result-content">
                    <table class="result-tab" width="100%">
                    	<tr><th>现役球员</th></tr>
                        <tr>
                         
                            <th>球员ID</th>
                            <th>姓名</th>
                            <th>票数</th>
                           
                            <th>删除操作</th>
                        </tr>
                        <c:forEach items="${nowPlayers }" var="n">
                        <tr>
                   
                            <td>${n.pid }</td> <!--标签ID-->
                            <td>${n.name}</td>
                            <td>${n.ballot}</td> 
                            <td><a href="delNowPlayer?pid=${n.pid }">删除</a></td> 
                         
                            
                        </tr>
                       </c:forEach>
                    </table>
                    
                    
                      <table class="result-tab" width="100%">
                    	<tr><th>名人堂球员</th></tr>
                        <tr>
                         
                            <th>球员ID</th>
                            <th>姓名</th>
                            <th>票数</th>
                           
                            <th>删除操作</th>
                        </tr>
                        <c:forEach items="${oldPlayers }" var="o">
                        <tr>
                   
                            <td>${o.pid }</td> <!--标签ID-->
                            <td>${o.name}</td>
                            <td>${o.ballot}</td> 
                            <td><a href="delOldplayer?pid=${o.pid }">删除</a></td> 
                         
                            
                        </tr>
                       </c:forEach>
                    </table>
                </div>
   
    <div class="result-content">
                <form action="addNowPlayer" method="post" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                  		      <tr><th>新增现役球员:</th></tr>
                            <tr>
                                <th><i class="require-red">*</i>姓名：</th>
                                <td>
                                    <input class="common-text required" id="title" name="name" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>图片：</th>
                                <td><input type="file" name="nowPlayerImg"/></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>图片路径：</th>
                                <td>
                                    <input class="common-text required" id="title" name="img" size="50" value="" type="text">
                                    images/nowPlayer/1.jpg
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
                <form action="addOldPlayer" method="post" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                  		      <tr><th>新增名人堂球员:</th></tr>
                            <tr>
                                <th><i class="require-red">*</i>姓名：</th>
                                <td>
                                    <input class="common-text required" id="title" name="name" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>图片：</th>
                                <td><input type="file" name="oldPlayerImg"/></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>图片路径：</th>
                                <td>
                                    <input class="common-text required" id="title" name="img" size="50" value="" type="text">
                                    images/hallOfFame/a3.jpg
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

		</div>
		
        </div>
    </div>
    <!--/main-->

</body>
</html>