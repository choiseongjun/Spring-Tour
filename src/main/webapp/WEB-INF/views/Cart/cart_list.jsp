<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp" %>
<script>
$(function(){
	$("#btnList").click(function(){
		location.href="${path}/Cart/list.do";
	});
	$("#btnDelete").click(function(){
		if(confirm('장바구니를 비우시겠습니까?')){
			location.href="${path}/shop/cart/deleteAll.do";
		}
	});
});
</script>
</head>
<body>
<div id="content">
<center>
<h2>예약 화면</h2>
<c:choose>
	<c:when test="${map.count==0 }"><!-- map으로 받아왔기에 -->
		장바구니가 비었습니다.
	</c:when>
		<c:otherwise>
			<form name="form1" method="post"
			action="${path}/Cart/update.do">
				<table border="1" width="800px" height="500">
					<tr>
						<th>도시</th>
						<th>패키지가격</th>
						<th>탑승인원</th>
						<th>금액</th>
						<th>날짜</th>
						<th>이미지</th>
					</tr>
				<c:forEach var="row" items="${map.list }">
					<tr>
						<td>${row.p_city }</td>
						<td>${row.p_price }</td>
						<td><input type="number" name=r_personnel
							value="${row.r_personnel}">
							<input type="hidden" name="r_id"
							value="${row.r_id }"></td>
							<td>${row.money }</td>
							<td>${row.p_date }</td>
							<td><img src="${path }/images/${row.p_img}" width="100px"
					height="300px"></td>
							<td>

	
		<a href="${path }/Cart/delete.do?r_id=${row.r_id}">취소하기</a></td>
						
							
					</tr>
					
	
				<tr>
					<td colspan="6" align="right">
					예약 총 금액 합계=${row.money }<br>
					마일리지적립:${row.money/100}<br>
				
					</td>
				</tr>	</c:forEach>
				<tr>
					<td colspan="7" align="right">
					토탈금액:${map.totalMoney }
					</td>
				</table>
				<button id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">예약 삭제하기</button>
			</form>
		</c:otherwise>
</c:choose>
	<button type="button" id="btnList">상품목록</button>
	</center>
	</div>
</body>
</html>