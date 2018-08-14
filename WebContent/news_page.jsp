<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻</title>
<link href="css/news_page.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
.detail{
	width:1000px;

	margin:0 auto;
	text-align:center;
}
.container{


}
.page{
	text-align:left;
	text-indent:2em;
	font-size:25px;
}
.pageImg{
	
	margin:0 auto;
}
</style>

</head>
<body>


     <div class="container">
            <div class="detail">
            	
                <h1>${news.title }</h1>
                <h4>
                                           来源: <span class="name">${news.auto}</span>
                                        <span class="time">${news.date }</span>
                    <a class="comm" href="#share">评论</a>
                </h4>
                <div class="page">
                      <p>${news.page}</p>
         		</div>
           </div>
 	</div>

</body>
</html>