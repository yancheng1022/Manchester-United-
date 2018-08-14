<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="/text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
<meta http-equiv="Content-Type" content="/text/html; charset=UTF-8">
</head>
<body>
<div class="container clearfix">
	<%@ include file="left.jsp" %>
  <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">分类管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                   
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post" action="change_match">
              
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                           
                            <th>主队</th>
                            <th>客队</th>
                            <th>比赛类型</th>
                            <th>比赛日期</th>
                            <th>比赛时间</th>
                        </tr>
                        <c:forEach var="r" items="${requestScope.matchs}" varStatus="s">
                        <tr>
                       
                            <td><input type="text"  name="matchList[${s.index }].team1_name" value="${r.team1_name}"></td>  
                            <th><input type="text"  name="matchList[${s.index }].team2_name" value="${r.team2_name }"></th> 
                            <td><input type="text"  name="matchList[${s.index }].match_type" value="${r.match_type }"></td>
                            <td><input type="text"  name="matchList[${s.index }].match_time" value="${r.match_time }"></td>
                            <td><input type="text"  name="matchList[${s.index }].time" value="${r.time}"></td>
                            <td><input type="hidden"  name="matchList[${s.index }].id" value="${r.id }"></td>
                        </tr>
                        </c:forEach>
                       
                    </table>

    			 <input type="submit" value="确认修改" >
                    </div>
              
           	 </form>
             </div>
       
    </div>
    <!--/main-->
</div>
</body>
</html>