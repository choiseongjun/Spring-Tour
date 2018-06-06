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
	$("#btnLogin").click(function(){
	var userid=$("#u_id")	.val();
	var passwd=$("#u_password").val();
	if(userid==''){
		alert("아이디를 입력하세요");
		$("#u_id").focus();//입력 포커스 이동
		return;//함수 종료
	}
	if(passwd=""){
		alert("비밀번호를 입력하세요");
		$("#u_password").focus();
		return;
	}
	//폼 데이터를 서버로 제출


	document.form1.action="${path}/user/login_check.do";
	document.form1.submit();
	});
});
</script>
</head>
<body>
<center>
<form name="form1" method="post">
<table border="1" width="400px">
	<tr>
		<td>아이디</td>
		<td><input name="u_id" id="u_id" ></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="u_password" id="u_password"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" id="btnLogin" value="로그인">
			<c:if test="${message=='error' }">
				<div style="color:red;">
				아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			<c:if test="${message=='logout' }">
				<div style="color:blue;">
					로그아웃 처리되었습니다.
					</div>
			</c:if>
		</td>
	</tr>
</table>
</form>
	 </center>
</body>
</html>