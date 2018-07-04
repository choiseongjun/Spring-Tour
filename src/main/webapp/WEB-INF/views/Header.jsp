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
<%@taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<title>about</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<link rel="icon" href="${path }/resources/style/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="${path }/resources/style/images/favicon.ico" type="image/x-icon" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


<link rel="stylesheet" href="${path }/resources/style/css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="${path }/resources/style/css/bootstrap-responsive.css" type="text/css" media="screen">
	<link href="${path }/resources/style/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="${path }/resources/style/css/style.css" type="text/css" media="screen">

<%-- <script type="text/javascript" src="${path}/js/jquery.js"></script>  
<script type="text/javascript" src="${path}/js/jquery.easing.1.3.js"></script> --%>
<%-- <script type="text/javascript" src="${path }/resources/style/js/superfish.js"></script>
 --%><%-- 
<script type="text/javascript" src="${path}/js/jquery.ui.totop.js"></script> --%>
<%-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />

<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
 --%>

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
<header><div class="logo_wrapper log"><a href="${path }" class="logo"><img src="${path }/resources/style/images/logojun.png" alt=""></a></div></header>
<div class="top2 clearfix">
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
				<s:authorize ifAnyGranted="ROLE_USER">
						<li><a href="${path}/Country/List.do?p_ctycode=1">한국</a></li>
						<li><a href="${path}/Country/List.do?p_ctycode=2">미국</a></li>
						<li><a href="${path}/Country/List.do?p_ctycode=3">일본</a></li>
						<li><a href="${path}/Country/List.do?p_ctycode=4">중국</a></li>
						<%-- <li><a href="${path }/chart1.do">항공정보보기</a></li> --%>
						<li><a href="${path}/product/TourList.do">전체보기</a></li>
						<li><a href="${path }/Board/list.do">자유 게시판</a></li>
							</s:authorize>
						<s:authorize ifAnyGranted="ROLE_ADMIN">
						<li><a href="${path}/product/write.do">상품 등록하기</a></li>
						<li><a href="${path}/chart0.do">차트로 보기</a></li>
						<li><a href="${path }/Board/list.do">자유 게시판</a></li>
						</s:authorize>
							<s:authorize ifNotGranted="ROLE_USER"><s:authorize ifNotGranted="ROLE_ADMIN">
						<li class="sub-menu sub-menu-1"><a href="${path}/user/login.do">LOGIN<i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/user/login.do">Sign-in</a></li>						
								<li><a href="${path}/user/joinpage.do">sign-up</a></li>
								<li><a href="index-5.html">Services</a></li>
								<li><a href="404.html">404 page not found</a></li>
							</ul>
						</li>
						</s:authorize>
	</s:authorize>
				<s:authorize ifAnyGranted="ROLE_USER">
			<li class="sub-menu sub-menu-1"><a href="${path }/Cart/list.do">장바구니<i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/user/logout.do">log-out</a></li>
								<li><a href="${path}/user/view.do?u_id=${u_id}">나의 정보</a></li>
							</ul>
						</li>
	</s:authorize>
			<s:authorize ifAnyGranted="ROLE_ADMIN">
			<li class="sub-menu sub-menu-1"><a href="#">MyPages<i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="${path}/user/logout.do">log-out</a></li>
							</ul>
						</li>
					</s:authorize>
	
					<!-- 	<li class="sub-menu sub-menu-1"><a href="#">Blog <i class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul>
								<li><a href="#">Blog</a></li>
								<li><a href="blog-post.html">Blog Poast</a></li>

							</ul>
						</li> -->
						<li><a href="${path }/email/write.do">이메일로 문의 및 찾아오시는 길</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>	
</div><%-- 
<script type="text/javascript" src="js/bootstrap.js"></script> --%>
</body>
</html>