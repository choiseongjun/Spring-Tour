<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hot tours</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css" type="text/css" media="screen">
	<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">

<script type="text/javascript" src="js/jquery.js"></script>  
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="js/jquery.caroufredsel.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>

<script>
$(document).ready(function() {
	//	carouFredSel
	$('#slider3 .carousel.main ul').carouFredSel({
		auto: {
			timeoutDuration: 80000					
		},
		responsive: true,
		prev: '.prev3',
		next: '.next3',
		width: '100%',
		scroll: {
			items: 1,
			duration: 1000,
			easing: "easeOutExpo"
		},			
		items: {
        	width: '550',
			height: 'variable',	//	optionally resize item-height			  
			visible: {
				min: 1,
				max: 4
			}
		},
		mousewheel: false,
		swipe: {
			onMouse: true,
			onTouch: true
			}
	});
	$(window).bind("resize",updateSizes_vat).bind("load",updateSizes_vat);
	function updateSizes_vat(){		
		$('#slider3 .carousel.main ul').trigger("updateSizes");
	}
	updateSizes_vat();

}); //
$(window).load(function() {
	//

}); //
</script>		

<%@ include file="../Header.jsp" %>
</head>

<body class="subpage">
<div id="main">




<div id="slider_wrapper">
<div class="img"><img src="${path }/images/background.jpg" ></div>
<img src="images/grad2.png" alt="" class="grad2">
<div class="slider_bot">
<div class="page_title">Hot Tours</div>
<div class="breadcrumbs1">
<div class="breadcrumbs1_inner"><a href="index.html">Home Page</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;Hot Tours</div>	
</div>
</div>
</div>

<div id="content">
<div class="container">
<div class="row">
<div class="span9">
	<div class="row">
<c:forEach var="row" items="${list }">
<div class="span3">
<div class="thumb2">
	<div class="thumbnail clearfix">
<figure class=""><img src="${path }/images/${row.p_img}" width="270px" height="270px" /></figure>
		<div class="caption">
			<h4><a href="${path}/product/detail/${row.p_code}">${row.p_city }</a></h4>
			<p>
				<strong>${row.p_price }</strong>
			</p>
			<p>
			${row.p_content }
			</p>			
		</div>
			
	</div>

</div>	
</div>
</c:forEach>

</div>

</div>

<div class="bot1">
<div class="container">
<div class="row">
<div class="span3">
	<div class="bot1_title">follow us</div>
	<div class="social_wrapper">
		<ul class="social clearfix">
		    <li><a href="#"><img src="images/social_ic1.png"></a></li>
		    <li><a href="#"><img src="images/social_ic2.png"></a></li>
		    <li><a href="#"><img src="images/social_ic3.png"></a></li>		    
		    <li><a href="#"><img src="images/social_ic4.png"></a></li>	
		    <li><a href="#"><img src="images/social_ic5.png"></a></li>	
		    <li><a href="#"><img src="images/social_ic6.png"></a></li>	
		</ul>
	</div>
</div>
<div class="span3">
	<div class="bot1_title">Destinations</div>
	<ul class="ul0">
	  <li><a href="#">Nam elit magna, hendrerit</a></li>
	  <li><a href="#">Quisque nullatibulum libero</a></li>
	  <li><a href="#">Scelerisque eget, malesuada at</a></li>
	  <li><a href="#">Vivamus eget niiam cursus leo</a></li>
	  <li><a href="#">Nulla facilisinean nec eros</a></li>
	</ul>
</div>
<div class="span3">
	<div class="bot1_title">Links</div>
	<ul class="ul0">
	  <li><a href="#">Nam elit magna, hendrerit</a></li>
	  <li><a href="#">Quisque nullatibulum libero</a></li>
	  <li><a href="#">Scelerisque eget, malesuada at</a></li>
	  <li><a href="#">Vivamus eget niiam cursus leo</a></li>
	  <li><a href="#">Nulla facilisinean nec eros</a></li>
	</ul>
</div>	
<div class="span3">
	<div class="bot1_title">Contacts</div>
	<div class="bot1_txt1">
		Call for more information:<br>
		<span>1 800 123 4567</span><br>

		8901 Marmora Road,<br>
Glasgow, D04 89GR.<br>
Telephone: +1 800 123 1234<br>
E-mail: <a href="#">mail@bteamny.com</a>
	</div>
</div>
</div>	
</div>	
</div>

<%@ include file="../Footer.jsp" %>
	
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>