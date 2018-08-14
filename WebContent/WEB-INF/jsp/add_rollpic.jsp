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
                <form action="add_rollpic" method="post" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                           
                            <tr>
                                <th><i class="require-red">*</i>图片1：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic1" size="50" value="" type="text" ">roll_pic/
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>图片2：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic2" size="50" value="" type="text" ">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>图片3：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic3" size="50" value="" type="text" ">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>图片4：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic4" size="50" value="" type="text" "> 
                                </td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片5：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic5" size="50" value="" type="text" "> 
                                </td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片6：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic6" size="50" value="" type="text" "> 
                                </td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片7：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic7" size="50" value="" type="text" "> 
                                </td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片8：</th>
                                <td><input type="file" name="file"/></td>
                            </tr>
                              <tr>
                                <th><i class="require-red">*</i>图片地址：</th>
                                <td>
                                    <input class="common-text required" id="title" name="roll_pic8" size="50" value="" type="text" "> 
                                </td>
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