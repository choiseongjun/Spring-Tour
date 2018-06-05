<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<tr height="500" align="center">
		<td align="center" width="1000">
		<%@ include file="../Header.jsp" %></td>
		</tr>
 <script src="Register.js"></script>
 <script type="text/javascript">
 
 	function passwordCheckFunction(){
 		var userPassword1=$('#userPassword1').val();
 	    var userPassword2=$('#userPassword2').val();
 	    if(userPassword1 !=userPassword2){
 	    	$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다');
 	    }else{
 	    	$('#passwordCheckMessage').html('비밀번호가 일치합니다');
 	    }
 	    }
 	$(function(){
 	 $(document).ready(function(){
 		 $("#btnUpdate").click(function(){
 				document.form1.action="${path}/user/update.do"
 				document.form1.submit();
 			});
 		 $("#btnDelete").click(function(){
 			 if(confirm("탈퇴하시겠습니까?")){
 				 document.form1.action="${path}/user/delete.do";
 				 document.form1.submit();
 			 }
 		 })
 		 });
 	});


 </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div id="container">
	<center>
		<h2 style="margin-top: 200px">회원 가입 </h2>
		<form  method="post" name="form1">
			<table width="400" border="1" bordercolor="gray">
					<tr height="40">
						<td width="150">아이디
						<input type="hidden" name="idDuplication" value="IdUncheck" ></td>
						<td width="250">
						<input class="form-control" type="text" name="u_id" id="id" readonly onkeydown="checkId()" value="${dto.u_id }" >
						</td>
					</tr>
						<tr height="40">
						<td width="150">패스워드</td>
						<td width="250"><input class="form-control" type="password" name="u_password"  id="userPassword1"  onkeyup="passwordCheckFunction();" ></td>
					</tr>
						<tr height="40">
						<td width="150">패스워드확인</td>
						<td width="250"><input class="form-control" type="password" name="u_password1" id="userPassword2"  onkeyup="passwordCheckFunction();" ></td>
					</tr>
						<tr height="40">
						<td width="150">이름</td>
						<td width="250"><input class="form-control" type="text" name="u_name" id="name" value="${dto.u_name }"></td>
					</tr>
						<tr height="40">
						<td width="150">주소</td>
						<td width="250"><input class="form-control" type="text" name="u_address" id="address" value="${dto.u_address }"></td>
					</tr>
						<tr height="40">
						<td width="150">전화</td>
						<td width="250"><input class="form-control" type="text" name="u_phone" value="${dto.u_phone}"></td>
					</tr>
						<tr height="40">
						<td colspan="2"><input type="button" value="수정하기" id="btnUpdate"><input type="button" value="탈퇴하기" id="btnDelete">
					<%-- 	<div style="color:red">${message}</div> --%></td>
					</tr>
						<td style="text-align:left" colspan="3"><h5 style="color:black;" id="passwordCheckMessage">${message}</h5></td>
				</table>
		</form>
	</center>
	</div>
</body>
</html>