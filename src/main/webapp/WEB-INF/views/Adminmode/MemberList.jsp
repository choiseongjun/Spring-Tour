<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp" %> 
</head>
<body>
	<table class="table table-striped table-bordered table-hover">

					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>번호</th>
						<th>주소</th>
						<th>삭제</th>
		
					</tr>
					<c:forEach var="p" items="${list }">
					<tr>
						<td>${p.u_id }</td>
						<td>${p.u_name }</td>
						<td>${p.u_address }</td>
						<td>${p.u_phone}</td>
	<td><input type="button" href="#" class="btn btn-primary" onclick="go()" value="삭제"></td>
		</tr>
				</c:forEach>
	
</body>
</html>