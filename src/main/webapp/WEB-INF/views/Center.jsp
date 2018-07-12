<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel GUIDE</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="icon" href="${path }/resources/style/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="${path }/resources/style/images/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="${path }/resources/style/css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="${path }/resources/style/css/bootstrap-responsive.css" type="text/css" media="screen">
	<link href="${path }/resources/style/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="${path }/resources/style/css/camera.css" type="text/css" media="screen">
<link rel="stylesheet" href="${path }/resources/style/css/style.css" type="text/css" media="screen">

<script type="text/javascript" src="${path }/resources/style/js/jquery.js"></script>  
<script type="text/javascript" src="${path }/resources/style/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${path }/resources/style/js/superfish.js"></script>

<script type="text/javascript" src="${path }/resources/style/js/jquery.ui.totop.js"></script>

<script type="text/javascript" src="${path }/resources/style/js/camera.js"></script>
<script type="text/javascript" src="${path }/resources/style/js/jquery.mobile.customized.min.js"></script>

<script type="text/javascript" src="${path }/resources/style/js/jquery.caroufredsel.js"></script>
<script type="text/javascript" src="${path }/resources/style/js/jquery.touchSwipe.min.js"></script>



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
<style>
 #map {
   width: 100%;
   height: 400px;
   background-color: grey;
 }
</style>
  <script>
      function initMap() {
        var uluru = {lat:37.5, lng: 127.037};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 1,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCa5zB9xiTXHYE3BbISvfZ38LQY7d7RPoc&callback=initMap">
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
		<div id="camera_wrap" >
			<div data-src="${path }/resources/style/images/back2.jpg">
				<div class="camera_caption fadeIn">
				<center><!-- 여기서부터 메인사진 3개 -->
					<div class="txt1"><h1 color="red"></h1></div>			
					<div class="txt2"></div>
					</center>
				</div>     
			</div>

			<div data-src="${path }/resources/style/images/back3.jpg" >
				<div class="camera_caption fadeIn">
	
				</div>     
			</div>
			
			<div data-src="${path }/resources/style/images/main4.jpg" >
				<div class="camera_caption fadeIn">
		
				</div>     
			</div>
		</div>
	</div>
<nav class="menu_splash">
	<ul id="menu_splash" class="clearfix">
		
	</ul>
</nav>
</div>

<div class="slogan1">
<div class="container">
<div class="row">
<div class="span12">
<div class="slogan1_inner">
<!-- <!-- <table>
		<tr>
			<td>기간</td>
			<td><input type="text" name="p_date"  id="datepicker"></td>
		</tr>
		</table> --> 
		<div id="calender"></div>
	</div>
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
<div class="slider3-title">지도 둘러보기</div>	
<div id="map"></div>
<a class="prev3" href="#"></a>
<a class="next3" href="#"></a>	
<!-- think about what put this location-->
</div>	
</div>	
</div>	
</div>	
</div>

<div id="content">
<div class="container">
<div class="row">
<div class="span9">
	
<h1>Welcome to Korea!!</h1>

<h3>이곳은 서울입니다</h3>
<div class="thumb1">
	<div class="thumbnail clearfix">
		<figure class="img-polaroid"><img src="${path }/images/korea.jpg" alt=""></figure>
		<div class="caption">
			<p>
			대한민국의 수도인 서울은 현대적인 고층 빌딩, 첨단 기술의 지하철, 대중문화와 사찰, 고궁, 노점상이 공존하는 대도시입니다. 주목할 만한 명소로는 곡선으로 이루어진 외관과 옥상 공원을 특징으로 하는 초현대적 디자인의 컨벤션 홀인 동대문디자인플라자, 한때 7,000여 칸의 방이 자리하던 경복궁, 회화나무와 소나무 고목이 있는 조계사가 있습니다.			</p>
			<a href="#" class="button1">read more</a>
		</div>
	</div>
</div>

</div>
<div class="span3">
	




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
		    <li><a href="#"><img src="${path }/resources/style/images/social_ic1.png"></a></li>
		    <li><a href="#"><img src="${path }/resources/style/images/social_ic2.png"></a></li>
		    <li><a href="#"><img src="${path }/resources/style/images/social_ic3.png"></a></li>		    
		    <li><a href="https://www.youtube.com/"><img src="${path }/resources/style/images/social_ic4.png"></a></li>	
		    <li><a href="#"><img src="${path }/resources/style/images/social_ic5.png"></a></li>	
		    <li><a href="#"><img src="${path }/resources/style/images/social_ic6.png"></a></li>	
		</ul>
	</div>
</div>


<div class="span3">
	<div class="bot1_title">Contacts</div>
	<div class="bot1_txt1">
		Call for more information:<br>
		<span>010 3002 2702</span><br>

	부산<br>
수영구 광안1동.<br>
Telephone: 010-3002-2702<br>
E-mail: <a href="#">csj2702@naver.com</a>
	</div>
</div>
</div>	
</div>	
</div>


	
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>