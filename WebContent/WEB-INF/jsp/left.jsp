<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/modernizr.min.js"></script>
</head>
<body>

    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>曼迷网</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                   
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/index"><i class="icon-font">&#xe008;</i>英超排行榜</a></li>
                        <li><a href="${pageContext.request.contextPath}/news"><i class="icon-font">&#xe005;</i>新闻发布</a></li>
                        <li><a href="${pageContext.request.contextPath}/userSystem?currentPage=1"><i class="icon-font">&#xe006;</i>用户管理</a></li>
                    </ul>
                </li>
                <li>
              
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/match"><i class="icon-font">&#xe017;</i>赛程</a></li>
                        <li><a href="${pageContext.request.contextPath}/toadd_team"><i class="icon-font">&#xe046;</i>新增球队</a></li>
                        <li><a href="${pageContext.request.contextPath}/roll_pic"><i class="icon-font">&#xe046;</i>首页轮播图片</a></li>
                      	 <li><a href="${pageContext.request.contextPath}/changePlayer"><i class="icon-font">&#xe046;</i>现役球员&名人堂</a></li>
                         <li><a href="${pageContext.request.contextPath}/showPictureCenter?currentPage=1"><i class="icon-font">&#xe046;</i>图片中心</a></li>
                          <li><a href="${pageContext.request.contextPath}/showVideoCenter?currentPage=1"><i class="icon-font">&#xe046;</i>视频中心</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>