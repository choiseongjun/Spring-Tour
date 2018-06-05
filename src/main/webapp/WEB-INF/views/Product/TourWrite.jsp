<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp" %>
</head>
<body>
<script>
function product_write(){
/* 	var product_name=$("#p_city").val();
	var price=$("#p_price").val();
	var description=$("#p_content").val();
	if(product_name==""){
		alert("상품이름을 입력하세요");
		$("#p_city").focus();
		return;
	}
	if(price==""){
		alert("가격을 입력하세요");
		$("#p_price").focus();
		return;
	}
	if(description==""){
		alert("상품 설명을 입력하세요");
		$("#p_content").focus();
		return;
	} */
	document.form1.action="${path}/product/insert.do";
	document.form1.submit();
	}
</script>
<h2>상품 등록</h2>
<form name="form1" method="post"
	enctype="multipart/form-data"><!-- 파일첨부 속성 -->
	<table>
		<tr>
			<td>상품명</td>
			<td><input name="p_city" id="p_city"></td>
		</tr>
		<tr>
			<td>기간</td>
			<td><input name="p_date" id="p_date"></td>
		</tr>
		<tr>
			<td>항공사</td>
			<td><input name="p_air" id="p_air"></td>
		</tr>
		<tr>
			<td>상품설명</td>
			<td><textarea rows="5" cols="60" 
			name="p_content" id="p_content"></textarea>
			</td>
			</tr>
			<tr>
			<td>가격</td>
			<td><input name="p_price" id="p_price"></td>
		</tr>
			<tr>
				<td>상품이미지</td>
				<td><input type="file" name="file1" id="file1"></td>
			</tr>
			<tr>
			<td>예약</td>
			<td><input name="p_reserve" id="p_reserve"></td>
		</tr>
		<tr>
			<td>도시코드</td>
			<td><input name="p_ctycode" id="p_ctycode"></td>
		</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" 
					onclick="product_write()">
					<input type="button" value="목록"
					onclick="location.href='${path}/admin/product/list.do'">
				</td>
			</tr>
	</table>
	</form>
</body>
</html>