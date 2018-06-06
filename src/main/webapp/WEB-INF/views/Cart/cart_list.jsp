<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<h2>장바구니</h2>
<c:choose>
	<c:when test="${map.count==0 }"><!-- map으로 받아왔기에 -->
		장바구니가 비었습니다.
	</c:when>
		<c:otherwise>
			<form name="form1" method="post"
			action="${path}/shop/cart/update.do">
				<table border="1" width="800px">
					<tr>
						<th>도시</th>
						<th>패키지가격</th>
						<th>탑승인원</th>
						<th>금액</th>
						<th>날짜</th>
						<th>&nbsp;</th>
					</tr>
				<c:forEach var="row" items="${map.list }">
					<tr>
						<td>${row.p_city }</td>
						<td>${row.p_price }</td>
						<td><input type="number" name=r_personnel
							value="${row.r_personnel}">
							<input type="hidden" name="cart_id"
							value="${row.r_id }"></td>
							<td>${row.money }</td>
							<td>${row.p_date }</td>
							<td>

		<c:if test="${sessionScope.u_id !=null }">
		<a href="${path }/Cart/delete.do?r_id=${row.r_id }">취소하기</a></td>
							</c:if>
							
					</tr>
					
	
				<tr>
					<td colspan="5" align="right">
					예약 총 금액 합계=${row.money }<br>
					마일리지적립:${row.money/100}<br>
				
					</td>
				</tr>	</c:forEach>
				<tr>
					<td colspan="5" align="right">
					토탈금액:${map.totalMoney }
					</td>
				</table>
				<button id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">예약 삭제하기</button>
			</form>
		</c:otherwise>
</c:choose>
	<button type="button" id="btnList">상품목록</button>
</body>
</html>