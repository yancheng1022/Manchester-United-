<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>曼迷网</title>
	<link rel="stylesheet" href="css/small_news.css" type="text/css" />
	<link rel="stylesheet" href="css/bnr-text.css" type="text/css" />
	<link rel="stylesheet" href="css/goal.css" type="text/css" />
	<link rel="stylesheet" href="css/calendar.css" type="text/css" />
		<link rel="stylesheet" href="css/range.css" type="text/css" />
		<link rel="stylesheet" href="css/header.css" type="text/css" />
		<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>	
	   <link href='http://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet' type='text/css'>		
	

		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="soccer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //for-mobile-apps -->
	<!-- js -->
		<script src="js/jquery.min.js"></script>
		<style type="text/css">
#pic{
	width:1140px;
    height: 600px;
 
 	margin:0 auto;
    
    } 
    

#pic img{ 
		width:1140px;
		
		height:600px;
		
   		margin:0px auto;
   		       
		
		
}
.pic2{width:285px;
    height: 373px;
 
 	margin:0 auto;
   
    } 
    

.pic2 img{ 
		width:285px;
		
		height:374px;
		
   		margin:0px auto;
   		    		
}

			
		}
</style>
	<!-- js -->
</head>
<body>
<!-- header -->
<%@ include file="header.jsp"%>
<!-- //header -->
<!-- banner -->
<div class="strip">
	 <div class="container">
	 <div class="search">
		    <form action="searchNews?currentPage=1" method="post">
		    	<input type="text" name="title" value="" placeholder="搜新闻">
				<input type="submit" value="">
			</form>
     </div >     
	 <div class="social">			 
			<c:if test="${empty user }">
				<a href="login.jsp">登录</a> &nbsp
				<a href="register.jsp">注册</a>
			</c:if>
			<c:if test="${!empty user }">
				<font color="white">欢迎您，${sessionScope.user.username }</font>
				<a href="logoff"><font color="black">注销</font></a>
			</c:if>
			 
	 </div>
		<div class="clearfix"></div>
		</div>
</div>
<!-- banner -->
<div class="banner">
		<script src="js/responsiveslides.min.js"></script>
  <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 300,
        manualControls: '#slider3-pager',
      });
    });
  </script>

 <div class="slider" >
	  <div class="callbacks_container" >
	     <ul class="rslides" id="slider" >
	          <li class="li1">
	         	<div id="pic" >
				 	<img src="${rollPics.roll_pic1 }" alt="" height="900px"/>
				 </div>
			  </li>  
	        
	         <li class="li1">
	         	 <div id="pic" >
				 <img src="${rollPics.roll_pic2 }" alt="" />
				  </div>
	        	 
			 </li>
	         <li class="li1">
	         	 <div id="pic" >
	             <img src="${rollPics.roll_pic3 }" alt=""  />
	              </div>
	        	
	         </li>
	          <li class="li1">
	         	 <div id="pic" >
	             <img src="${rollPics.roll_pic4 }" alt=""  />
	              </div>
	        	
	         </li>
	          <li class="li1">
	         	 <div id="pic" >
	             <img src="${rollPics.roll_pic5 }" alt=""  />
	              </div>
	        	
	         </li>
	          <li class="li1">
	         	 <div id="pic" >
	             <img src="${rollPics.roll_pic6 }" alt=""  />
	              </div>
	        	
	         </li>
	          <li class="li1">
	         	 <div id="pic" >
	             <img src="${rollPics.roll_pic7 }" alt=""  />
	              </div>
	        	
	         </li>
	          <li class="li1">
	         	 <div id="pic" >
	             <img src="${rollPics.roll_pic8 }" alt=""  />
	              </div>
	        	
	         </li>
	      </ul>
	  </div>
  </div>
<!---->
				
	 <!---start-content----->
	
			 <div class="banner-text-info clr2">	
				
				 <div class="bnr-text">
					 <div class="bnr-text_title"><h4>新闻</h4></div>

			<div id="news_list">
 
 			
 			<br />
 			 <h5><a href="allNews?currentPage=1" style="color:red;">>>>浏览更多新闻</a></h5><br/>
 			 
 			   <div class="news_list">
 			   <ol>
	 			   <c:forEach var="n" items="${requestScope.news}" >
	 			
	 			 	 	<li>
	 			 	 	
	 			 	 		<a href="news_page/${n.pid}" target="_blank" class="pc_count">
                           		 <img src="${n.cover}" alt="${n.title}">
                       	    </a>
	 			 	 	<h3>
	 			 	 		<a href="news_page/${n.pid}" target="_blank" class="pc_count">${n.title}</a>
	 			 	 	
	 			 	 	
	 			 	 	</h3>
	 			 	 	<p></p>
	 			 	 	<div class="info">
                            <div class="time">${n.date}</div>
                            
                        </div>
	 			 	 	
	 			 	 	
	 			 	 	</li>
	 			 	 					
	                 
				</c:forEach>
				 </ol>
             </div>
                   
             
            	
</div>

					
					
					
					
					
				 </div>
				 <div class="range">
				 	 <div class="range_title"><h4>英超积分榜</h4></div>
				
						<table>
						  <tr>
						    <th style="width:15%" bgcolor="#81add2" font-weight="bold">排名</th>
						    <th style="width:40%" bgcolor="#81add2">球队</th>
						    <th style="width:30%" bgcolor="#81add2">胜/平/负</th>
						    <th style="width:15%" bgcolor="#81add2">积分</th>
						  </tr>
						  <c:forEach var="r" items="${requestScope.ranges}" >
								  <tr>
								    <th>${r.rangec }</th>
								    <th>${r.team }</th>
								    <th>${r.result }</th>
								    <th>${r.score }</th>
								  </tr>
						   </c:forEach>
						 
						</table>
					
				 
				 </div>
				 <div class="calendar">
				  <div class="calendar_title"><h4>赛程表</h4></div>
				 <c:forEach var="m" items="${matchs}">
				 	
				 	 <div class="matchItem">
				 	 <div class="team1">
				 	 	<div class="team_img"><img src="${m.team1_img}" /></div>
				 	 	<div class="team_name">${m.team1_name}</div>
				 	 </div>
				 	 <div class="match_start">
				 	 	<div style="font-size:12px;font-weight:500;height:24px;">${m.match_type}</div>
				 	 	<div style="font-size:12px;font-weight:500;height:24px;">${m.match_time}</div>
				 	 	<div style="font-size:12px;font-weight:500;height:24px;">${m.time}</div>
				 	 </div>
				 	  <div class="team2">
				 	 	<div class="team_img"><img src="${m.team2_img}" /></div>
				 	 	<div class="team_name">${m.team2_name}</div>
				 	 </div>
				 	 
				 	 </div>
				 	 	 <hr />

				 
				 </c:forEach>
				 	 
				 	  
				 	
				 	
				 	
				 
				 </div>
				  <input type="button" value="视频直播" onclick="location='http://www.jisutiyu.com/event/yingchao/'" class="current_video">
			 </div>
			 
			  <div class="history">	
				<div class="nowPlayer">
				 	 <h3>现役球员</h3>
				 	 	<div class="pic2">
				 			<a href="nowPlayer?currentPage=1"><img src="${pageContext.request.contextPath}/images/nowPlayer.jpg"></a>
				 		</div>
				 
				</div>
				
				<div class="bestPlayer">
				 	 <h3>名人堂</h3>
				 		<div class="pic2">
				 			<a href="hallOfFame?currentPage=1"> <img src="images/bestPlayer.jpg"></a>
				 		</div>
				 
				</div>
				<div class="clubHistory">
				 	 <h3>俱乐部历史</h3>
				 		<div class="pic2">
				 			<a href="clubHistory.jsp"> <img src="images/club.jpg"></a>
				 		</div>
				 
				</div>
				<div class="oldTrafford">
				 	 <h3>梦剧场</h3>
				 	<div class="pic2">
				 			 <a href="oldTrafford.jsp"><img src="images/oldTrafford.jpg"></a>
				 		</div>
				 
				</div>
			  </div>
			 
			 
		 </div>
	
<!-- //banner -->

<!-- content -->

<!--- //content--->

<!--footer-->
 <%@ include file="footer.jsp"%>
<!-- //footer -->
</body>
</html>