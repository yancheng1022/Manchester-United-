<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<link rel="stylesheet" href="css/header.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>hallOfFame</title>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1-4-2.min.js"></script> 

<script type="text/JavaScript" src="js/cloud-carousel.1.0.5.js"></script>
 
<script type="text/javascript">
$(document).ready(function(){
						   
	// This initialises carousels on the container elements specified, in this case, carousel1.
	$("#carousel1").CloudCarousel(		
		{			
			reflHeight: 40,
			reflGap: 2,
			titleBox: $('#da-vinci-title'),
			altBox: $('#da-vinci-alt'),
			buttonLeft: $('#slider-left-but'),
			buttonRight: $('#slider-right-but'),
			yRadius: 30,
			xPos: 480,
			yPos: 32,
			speed:0.15,
			autoRotate: "yes",
			autoRotateDelay: 1500
		}
	);
});

</script>

</head>

<body id="home">

<div id="templatemo_header_wrapper">
	
     <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>           
            </li>
        </ul>
      
    </div> <!-- end of templatemo_menu -->
    <div class="cleaner"></div>
</div>	<!-- END of templatemo_header_wrapper -->
<div id="templatemo_slider">
	<!-- This is the container for the carousel. -->
    <div id = "carousel1" style="width:960px; height:280px;background:none;overflow:scroll; margin-top: 20px" class="rool_head">            
        <!-- All images with class of "cloudcarousel" will be turned into carousel items -->
        <!-- You can place links around these images -->
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/01.jpg" alt="CSS Templates 1" title="Website Templates 1" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/02.jpg" alt="CSS Templates 2" title="Website Templates 2" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/03.jpg" alt="CSS Templates 3" title="Website Templates 3" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/04.jpg" alt="CSS Templates 4" title="Website Templates 4" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/05.jpg" alt="Flash Templates 1" title="Flash Templates 1" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/06.jpg" alt="Flash Templates 2" title="Flash Templates 2" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/07.jpg" alt="Flash Templates 3" title="Flash Templates 3" /></a>
        <a href="#" rel="lightbox"><img class="cloudcarousel" src="images/slider/08.jpg" alt="Flash Templates 4" title="Flash Templates 4" /></a>
    </div>
    
    <!-- Define left and right buttons. -->
    <center>
    <input id="slider-left-but" type="button" value="" />
    <input id="slider-right-but" type="button" value="" />
    </center>
</div>


</body>
</html>