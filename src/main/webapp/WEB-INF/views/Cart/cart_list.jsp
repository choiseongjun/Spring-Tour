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
				<table border="1" width="400px">
					<tr>
						<th>상품명</th>
						<th>단가</th>
						<th>수량</th>
						<th>금액</th>
						<th>&nbsp;</th>
					</tr>
				<c:forEach var="row" items="${map.list }">
					<tr>
						<td>${map.product_name }</td>
						<td>${map.price}</td>
						<td><input type="number" name="amount"
							value="${row.r_amount }">
							<input type="hidden" name="cart_id"
							value="${row.r_id }"></td>
							<td>${row.money }</td>
							<td>
		<c:if test="${sessionScope.userid !=null }">
		<a href="${path }/shop/cart/delete.do?cart_id=${row.p_code }">삭제</a></td>
		</c:if>
							
							
					</tr>
					
				</c:forEach>
				<tr>
					<td colspan="5" align="right">
					장바구니 금액 합계=${map.sumMoney }<br>
					배송료:${map.fee}<br>
					총합계:${map.sum}
					</td>
				</tr>
				</table>
				<button id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">장바구니 비우기</button>
			</form>
		</c:otherwise>
</c:choose>
	<button type="button" id="btnList">상품목록</button>
</body>
</html>