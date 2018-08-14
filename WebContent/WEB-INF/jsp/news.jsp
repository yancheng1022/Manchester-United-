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
<div class="container clearfix">
	<%@ include file="left.jsp" %>
	<div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">新闻发布</a><span class="crumb-step">&gt;</span><span>新增新闻</span></div>
        </div>
        <div class="result-wrap"> 
            <div class="result-content">
                <form action="end_new" method="post" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>标题：</th>
                                <td>
                                    <input class="common-text required" id="title" name="title" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>文章图片：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>标题图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="cover" size="50" value="" type="text" "> newsImg/1.jpg
                                </td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>来源（作者）：</th>
                                <td>
                                    <input class="common-text required" id="title" name="auto" size="50" value="" type="text" ">
                                </td>
                            </tr>
                          
                            <tr>
                                <th>新闻内容：</th>
                                <td><textarea name="page" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10" ></textarea></td>
                        
                        
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="发布" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>