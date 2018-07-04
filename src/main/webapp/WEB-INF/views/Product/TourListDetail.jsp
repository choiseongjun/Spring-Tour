<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp"%>
</head>
<body>
	<center>
	<div id="content">
		<h2>상품정보</h2>
		<table>
			<tr>
				<td><img src="${path }/images/${dto.p_img}" width="500px"
					height="500px"></td>
				<td align="center">
					<table>
						<tr>
							<td>상품명</td>
							<td>${dto.p_city}</td>
						</tr>
						<tr>
							<td>가격</td>
							<td>${dto.p_price}</td>
						</tr>
						<tr>
							<td>내용</td>&nbsp;
							<td>${dto.p_content}</td>
						</tr>
						<tr>
							<td>날짜</td>
							<td>${dto.p_date }</td>
						<tr>
							<td colspan="2">
								<form name="form" method="post" action="${path}/Cart/insert.do">
									<input type="hidden" name="p_code" value="${p_code }">
									<select name="r_personnel">
										<c:forEach begin="1" end="10" var="i">
											<option value="${i }">${i }인</option>
										</c:forEach>
									</select>
								
								 <input type="submit" value="예약하기">
								</form>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</div>
	</center>
</body>
</html>