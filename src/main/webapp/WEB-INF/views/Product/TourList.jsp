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



<div id="content">
<div class="container">
<div class="row">
<div class="span9">
	
<h1>Our Best Tours</h1>

<div class="row">
<c:forEach var="p" items="${list }">
<div class="span2">
<div class="thumb2">
	<div class="thumbnail clearfix">
		<figure class=""><img src="${path }/images/${p.p_img}"width="270px" height="270px"></figure>
		<div class="caption">
			<h4><a href="${path }/product/detail/${p.p_code}" >${p.p_city }</a></h4>
			<p>
				<strong>Price: $$ ${p.p_price }</strong>
			</p>
		
		</div>
	</div>
</div>	
</div>
</c:forEach>	
</div>

</div>
<div class="span3">
	
<h2>광고리스트</h2>

<ul class="ul1">
  <li><a href="#">Fusce euismod consequat</a></li>
  <li><a href="#">Lorem ipsum dolor sit amet,</a></li>
  <li><a href="#">Pellentesque sed dolor</a></li>
  <li><a href="#">Aliquam congue fermentum</a></li>
  <li><a href="#">Mauris accumsan nulla vel</a></li>
  <li><a href="#">Sed in lacus ut adipiscing</a></li>
  <li><a href="#">Fusce euismod consequat</a></li>
  <li><a href="#">Lorem ipsum dolor sit amet,</a></li>
  <li><a href="#">Pellentesque sed dolor</a></li>
  <li><a href="#">Aliquam congue fermentum</a></li>
  <li><a href="#">Mauris accumsan nulla vel</a></li>
  <li><a href="#">Sed in lacus ut adipiscing</a></li>		            		      	      			      
</ul>





</div>	
</div>	
</div>	
</div>

<%@ include file="../Footer.jsp" %>
	
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>