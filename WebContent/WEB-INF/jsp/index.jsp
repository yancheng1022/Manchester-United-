<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<meta http-equiv="Content-Type" content="/text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container clearfix">
	<%@ include file="/WEB-INF/jsp/left.jsp" %>
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
            <form name="myform" id="myform" method="post" action="change_range">
              
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                           
                            <th>排名</th>
                            <th>球队</th>
                            <th>胜/平/负</th>
                            <th>积分</th>
                        </tr>
                        <c:forEach var="r" items="${requestScope.ranges}" varStatus="s">
                        <tr>
                       
                            <td><input type="text" name="rangeList[${s.index }].rangec" value="${r.rangec }"></td>  
                            <th><input type="text"  name="rangeList[${s.index }].team" value="${r.team }"></th> 
                            <td><input type="text"  name="rangeList[${s.index }].result" value="${r.result }"></td>
                            <td><input type="text"  name="rangeList[${s.index }].score" value="${r.score }"></td>
                           
                            <td><input type="hidden"  name="rangeList[${s.index }].id" value="${r.id }"></td>
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