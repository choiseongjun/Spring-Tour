<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>hot tours</title>
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
.class {
	float: left;
}

table.type08 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-left: 1px solid #ccc;
    margin: 20px 10px;
}

table.type08 thead th {
    padding: 10px;
    font-weight: bold;
    border-top: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 2px solid #c00;
    background: #dcdcd1;
}
table.type08 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    background: #ececec;
}
table.type08 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}


</style>		
<%@ include file="../Header.jsp" %>

<div id="content">
<div class="container">
<div class="row">
<div class="span9">
	
<h1>Our Best Tours</h1>

<div class="row">
	<div class="thumbnail clearfix">
		<figure class=""><img src="http://via.placeholder.com/270x270" alt=""></figure>
		<div class="caption">
					<c:choose>
					<c:when test="${uu.id == null }">
							
					</c:when>
					<c:otherwise>
						<table class="type08">
							<thead>
							<tr><th>번호</th><th>유저아이디</th><th>상품번호</th><th>예약일</th><th></th></tr>
							</thead>
							<tbody>
							<c:forEach var="r" items="${listr }">
							<tr>
							<td>${r.rid }</td><td>${r.uid }</td><td>${r.pcode }</td><td>${r.rdate }</td>
							<td><a href="reservedelete.do?rid=${r.rid }&uid=${uu.id }">삭제</a></td></tr>
							</c:forEach>
							</tbody>
							
						</table>
					</c:otherwise>		
					</c:choose>
		</div>
	</div>
</div>

</div>
<div class="span3">
	
<h2>Destination List</h2>

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


<script type="text/javascript" src="js/bootstrap.js"></script>
