<!DOCTYPE html>
<html lang="en">
<head>
<title>Travel GUIDE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/bootstrap-responsive.css" type="text/css" media="screen">
	<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/camera.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">

<script type="text/javascript" src="js/jquery.js"></script>  
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="js/camera.js"></script>
<script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>

<script type="text/javascript" src="js/jquery.caroufredsel.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script>
$(document).ready(function() {
	// camera
	$('#camera_wrap').camera({
		//thumbnails: true
		autoAdvance			: true,		
		mobileAutoAdvance	: true,
		//fx					: 'simpleFade',
		height: '51%',
		hover: false,
		loader: 'none',
		navigation: true,
		navigationHover: false,
		mobileNavHover: false,
		playPause: false,
		pauseOnClick: false,
		pagination			: true,
		time: 7000,
		transPeriod: 1000,
		minHeight: '200px'
	});

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
        	width: '350',
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
<!--[if lt IE 8]>
		<div style='text-align:center'><a href="https://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg"border="0"alt=""/></a></div>
	<![endif]-->    

<!--[if lt IE 9]>
  <script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>

<body class="main">
<div id="main">



<div id="slider_wrapper">
	<div id="slider" class="clearfix">
		<div id="camera_wrap">
			<div data-src="http://via.placeholder.com/1600x823">
				<div class="camera_caption fadeIn">
					<div class="txt1">Your Travel Guide</div>			
					<div class="txt2">family tours from $1100</div>
				</div>     
			</div>

			<div data-src="http://via.placeholder.com/1600x823">
				<div class="camera_caption fadeIn">
					<div class="txt1">Your Travel Guide</div>			
					<div class="txt2">caucasus vacation from $490</div>
				</div>     
			</div>
			
			<div data-src="http://via.placeholder.com/1600x823">
				<div class="camera_caption fadeIn">
					<div class="txt1">Your Travel Guide</div>			
					<div class="txt2">fantastic haway from $500</div>
				</div>     
			</div>
		</div>
	</div>
<nav class="menu_splash">
	<ul id="menu_splash" class="clearfix">
		<li class="nav1">
			<a href="#" class="rollover">
			<div class="cube">
			  <div class="front">    
			    <img src="images/ic1.png" alt="" class="img_icon">
			    <div class="txt1">Destinations</div>
			  </div>
			  <div class="back">
			  	<img src="images/ic1.png" alt="" class="img_icon">
			    <div class="txt1">Destinations</div>
			  </div>
			</div>
			</a>
		</li>
		<li class="nav2">
			<a href="#" class="rollover">
			<div class="cube">
			  <div class="front">    
			    <img src="images/ic2.png" alt="" class="img_icon">
			    <div class="txt1">Air Tickets</div>
			  </div>
			  <div class="back">
			  	<img src="images/ic2.png" alt="" class="img_icon">
			    <div class="txt1">Air Tickets</div>
			  </div>
			</div>
			</a>
		</li>
		<li class="nav3">
			<a href="#" class="rollover">
			<div class="cube">
			  <div class="front">    
			    <img src="images/ic3.png" alt="" class="img_icon">
			    <div class="txt1">Hot Tours</div>
			  </div>
			  <div class="back">
			  	<img src="images/ic3.png" alt="" class="img_icon">
			    <div class="txt1">Hot Tours</div>
			  </div>
			</div>
			</a>
		</li>
		<li class="nav4">
			<a href="#" class="rollover">
			<div class="cube">
			  <div class="front">    
			    <img src="images/ic4.png" alt="" class="img_icon">
			    <div class="txt1">Hotels</div>
			  </div>
			  <div class="back">
			  	<img src="images/ic4.png" alt="" class="img_icon">
			    <div class="txt1">Hotels</div>
			  </div>
			</div>
			</a>
		</li>
	</ul>
</nav>
</div>

<div class="slogan1">
<div class="container">
<div class="row">
<div class="span12">
<div class="slogan1_inner">
<div class="txt1">Start Your Trip With Us</div>	
<div class="txt2">Popular destinations and greate customer service</div>
<div class="txt3">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat consectetuer adipiscing elit. </div>
<div class="txt4 clearfix"><a href="#" class="find1">Find the Tour</a><a href="#" class="request1">Request Estimate</a></div>
</div>	
</div>	
</div>	
</div>	
</div>

<div id="slider3_wrapper">
<div class="container">
<div class="row">
<div class="span12">
<div id="slider3">
<div class="slider3-title">Popular Destinations</div>	
<a class="prev3" href="#"></a>
<a class="next3" href="#"></a>	
<div class="carousel-box row">
	<div class="inner span12">			
		<div class="carousel main">
			<ul>
				<li>
					<div class="thumb-carousel banner1">
						<div class="thumbnail clearfix">
							<a href="#">
								<figure>
									<img src="${path }/images/korea1.jpg" width="277" height="277"alt="">
									<em></em>
								</figure>
								<div class="caption">
									Korea
								</div>								
							</a>								
						</div>
					</div>
				</li>
				<li>
					<div class="thumb-carousel banner1">
						<div class="thumbnail clearfix">
							<a href="#">
								<figure>
									<img src="http://via.placeholder.com/277x277" alt="">
									<em></em>
								</figure>
								<div class="caption">
									Tenerife
								</div>								
							</a>								
						</div>
					</div>
				</li>
				<li>
					<div class="thumb-carousel banner1">
						<div class="thumbnail clearfix">
							<a href="#">
								<figure>
									<img src="http://via.placeholder.com/277x277" alt="">
									<em></em>
								</figure>
								<div class="caption">
									London
								</div>								
							</a>								
						</div>
					</div>
				</li>
				<li>
					<div class="thumb-carousel banner1">
						<div class="thumbnail clearfix">
							<a href="#">
								<figure>
									<img src="http://via.placeholder.com/277x277" alt="">
									<em></em>
								</figure>
								<div class="caption">
									Egypt
								</div>								
							</a>								
						</div>
					</div>
				</li>
				<li>
					<div class="thumb-carousel banner1">
						<div class="thumbnail clearfix">
							<a href="#">
								<figure>
									<img src="http://via.placeholder.com/277x277" alt="">
									<em></em>
								</figure>
								<div class="caption">
									Greece
								</div>								
							</a>								
						</div>
					</div>
				</li>
				<li>
					<div class="thumb-carousel banner1">
						<div class="thumbnail clearfix">
							<a href="#">
								<figure>
									<img src="http://via.placeholder.com/277x277" alt="">
									<em></em>
								</figure>
								<div class="caption">
									Sri Lanka
								</div>								
							</a>								
						</div>
					</div>
				</li>																								
			</ul>
		</div>
	</div>
</div>
</div>	
</div>	
</div>	
</div>	
</div>

<div id="content">
<div class="container">
<div class="row">
<div class="span9">
	
<h1>Welcome to Korea</h1>

<h3>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.</h3>

<div class="thumb1">
	<div class="thumbnail clearfix">
		<figure class="img-polaroid"><img src="${path }/images/korea.jpg" alt=""></figure>
		<div class="caption">
			<p>
				Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat consectetuer adipiscing elit. Nunc suscipit. 
			</p>
			<a href="#" class="button1">read more</a>
		</div>
	</div>
</div>

</div>
<div class="span3">
	
<h2>Services</h2>

<ul class="ul1">
  <li><a href="#">Tour reservation</a></li>
  <li><a href="#">Insurance</a></li>
  <li><a href="#">Tickets online</a></li>
  <li><a href="#">Hotel booking</a></li>
  <li><a href="#">Consultation</a></li>
  <li><a href="#">Transfer</a></li>		            		      	      			      
</ul>



</div>	
</div>	
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


	
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>