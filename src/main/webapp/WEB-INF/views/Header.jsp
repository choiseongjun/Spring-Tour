<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<title>about</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="icon" href="${path}/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="${path}/images/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="${path}/css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="${path}/css/bootstrap-responsive.css" type="text/css" media="screen">
	<link href="${path}/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/css/style.css" type="text/css" media="screen">

<script type="text/javascript" src="${path}/js/jquery.js"></script>  
<script type="text/javascript" src="${path}/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${path}/js/superfish.js"></script>

<script type="text/javascript" src="${path}/js/jquery.ui.totop.js"></script>

<script>
$(document).ready(function() {
	// 

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

<body class="subpage">
<div id="main">

<div class="top1 clearfix">
<header><div class="logo_wrapper log"><a href="${path }" class="logo"><img src="${path }/images/logojun.png" alt=""></a></div></header>
<div class="top2 clearfix">
<div class="search-form-wrapper clearfix">
<form id="search-form" action="search.php" method="GET" accept-charset="utf-8" class="navbar-form" >
	<input type="text" name="s" value='Search' onBlur="if(this.value=='') this.value='Search'" onFocus="if(this.value =='Search' ) this.value=''">
	<a href="#" onClick="document.getElementById('search-form').submit()"></a>
</form>	
</div>
	<div class="menu_wrapper clearfix">
		<div class="navbar navbar_">
			<div class="navbar-inner navbar-inner_">
				<a class="btn btn-navbar btn-navbar_" data-toggle="collapse" data-target=".nav-collapse_">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				
				<div class="nav-collapse nav-collapse_ collapse">
					<ul class="nav sf-menu clearfix">
						<li><a href="${path }">home</a></li>
						<c:choose>
						<c:when test="${sessionScope.adminu_id==null}">
						
						<li><a href="index-1.html">한국</a></li>
						<li><a href="index-1.html">미국</a></li>
						<li><a href="index-1.html">일본</a></li>
						<li><a href="index-1.html">중국</a></li>
						<li><a href="index-1.html">필리핀</a></li>
						<li><a href="${path}/product/TourList.do">hot tours</a></li>
						<li><a href="index-3.html">Destination</a></li>
								</c:when>
								<c:when test="${sessionScope.adminu_id!=null}">
						<li><a href="${path}/product/write.do">update Product</a></li>
						<li><a href="${path}/product/TourList.do">bbb</a></li>
						<li><a href="index-3.html">aaa</a></li>
								</c:when>
						</c:choose>
					<c:choose>
		<c:when test="${sessionScope.u_id==null&&sessionScope.adminu_id==null }">
						<li class="sub-menu sub-menu-1"><a href="#">Pages<i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/user/login.do">Sign-in</a></li>						
								<li><a href="${path}/user/joinpage.do">sign-up</a></li>
								<li><a href="index-5.html">Services</a></li>
								<li><a href="404.html">404 page not found</a></li>
							</ul>
						</li>
				</c:when>
			<c:when test="${sessionScope.u_id!=null}">
			<li class="sub-menu sub-menu-1"><a href="${path }/Cart/list.do">MyPages<i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/user/logout.do">log-out</a></li>
								<li><a href="${path}/user/view.do?u_id=${u_id}">UpdateInfo</a></li>
								<li><a href="404.html">404 page not found</a></li>
							</ul>
						</li>
	</c:when>
			<c:when test="${sessionScope.adminu_id!=null}">
			<li class="sub-menu sub-menu-1"><a href="#">MyPages<i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/user/logout.do">log-out</a></li>
							</ul>
						</li>
						</c:when>
	</c:choose>
						<li class="sub-menu sub-menu-1"><a href="#">Blog <i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/Board/boardList.do">QnA</a></li>
								<li><a href="blog-post.html">Blog Poast</a></li>

							</ul>
						</li>
						<li><a href="index-6.html">contacts</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>	
</div>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>