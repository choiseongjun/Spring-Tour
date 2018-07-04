<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<tr height="500" align="center">
		<td align="center" width="1000">
		<%@ include file="../Header.jsp" %></td>
		</tr>
 <script type="text/javascript">
 function p_addImpl(){
	 	var u_id = $("#u_id").val();
	 	var u_password=$("#u_password").val();
		if (u_id == "") {
			alert("아이디를 입력하세요");
			$("#u_id").focus();
			return false;
		}
		if(u_password=""){
			alert("비밀번호를 입력하세요");
			$("#u_password").focus();
			return false;
		}
		
 }
 	function passwordCheckFunction(){
 		var userPassword1=$('#userPassword1').val();
 	    var userPassword2=$('#userPassword2').val();
 	    if(userPassword1 !=userPassword2){
 	    	$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다');
 	    }else{
 	    	$('#passwordCheckMessage').html('비밀번호가 일치합니다');

 	    }
 	    	
 	    }
 	$(document).ready(function(){
        $('#checkbtn').on('click', function(){
            $.ajax({
                type: 'POST',
                url: '${path}/user/checkId.do',
                data: {
                    "u_id" : $('#u_id').val()
                },
                success: function(data){
                	alert(data);
                    if(data == 'true'){
                        $('#passwordCheckMessage').html('<p>사용 불가능</p>');
                    }
                    else{
                        $('#passwordCheckMessage').html('<p>사용 가능</p>');
                    }
                }
            });    //end ajax    
        });    //end on    
  
    });

</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="content">
 <div id="container">
	<center>
		<h2 style="margin-top: 100px">회원 가입 </h2>
		<form action="${path}/user/joinuser.do" method="post" id="frm">
			<table width="400" border="1" bordercolor="gray">
					<tr height="40">
						<td width="150">아이디<button type="button"  class="btn btn-default" id="checkbtn" >중복확인</button>
						<input type="hidden" name="idDuplication" value="IdUncheck"></td>
						<td width="250">
								<input class="form-control" type="text" name="u_id" id="u_id" >	
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
						<td width="250"><input class="form-control" type="text" name="u_name" id="name"></td>
					</tr>
						<tr height="40">
						<td width="150">주소</td>
						<td width="250"><input class="form-control" type="text" name="u_address" id="address"></td>
					</tr>
						<tr height="40">
						<td width="150">전화</td>
						<td width="250"><input class="form-control" type="text" name="u_phone"></td>
					</tr>
						<tr height="40">
						<td colspan="2"><input type="submit" value="회원가입"
            onclick="p_addImpl()">
					</td>
					</tr>
					<tr>
				<td>사용권한</td>
				<td><select name="authority">
						<option value="ROLE_USER">일반사용자</option>
						<option value="ROLE_ADMIN">관리자</option>
				</select>
				
				
				<div id = "showdata" style = "text-align: center"></div>
			</tr>
						<td style="text-align:left" colspan="3"><h5 style="color:black;" id="passwordCheckMessage"></h5></td>
				</table>
				
	</form>
	</center>
	</div>
	</div>
</body>
</html>