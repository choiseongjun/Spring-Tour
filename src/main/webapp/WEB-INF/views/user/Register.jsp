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
                        $('#passwordCheckMessage').html('<p>이미 존재하는 Id입니다</p>');
                    }
                    else{
                        $('#passwordCheckMessage').html('<p>사용 가능</p>');
                    }
                }
            });    //end ajax    
        });    //end on    
     	function imgRefresh(){

     	    $.ajax({    	
     	    	url:"${path}/captcha",
     	    	type:"get",
     	    	success:function(result){
     	   		
     	    		    $("#captchaImg").attr("src", "/captcha?id=" + Math.random()); 			
     	    			
     	    	}    	
     	    });

     	}



     	$(document).ready(function(){
     		
     		
     		

     		$("#confirm").click(function(){
     			var captcha=$("#captcha").val();
     			
     			$.ajax({
     				url:"${path}/capCharConfirm?capcha="+captcha,
     			   	type:"get",
     		    	success:function(result){
     					if(result=="SUCCESS"){		
     						$("#capchaConfirmvalue").text("로봇이 아닙니다.");
     						$("#captcha").val("");
     						
     					}else{
     						$("#captcha").val("");
     						imgRefresh();
     					}
     				}
     			});

     			
     		});
     		
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
			<table width="400" border="0" bordercolor="gray">
					<tr height="40">
						<td width="150"><h5>아이디</h5>	<button type="button"  class="btn btn-default" id="checkbtn" >체크</button>
						<input type="hidden" name="idDuplication" value="IdUncheck"></td>
						<td width="250">
								<input class="form-control" type="text" name="u_id" id="u_id" >
						</td>
					</tr>
				
						<tr height="40">
						<td width="150"><h5>패스워드</h5></td>
						<td width="250"><input class="form-control" type="password" name="u_password"  id="userPassword1"  onkeyup="passwordCheckFunction();" ></td>
					</tr>
						<tr height="40">
						<td width="150"><h5>패스워드확인</h5></td>
						<td width="250"><input class="form-control" type="password" name="u_password1" id="userPassword2"  onkeyup="passwordCheckFunction();" ></td>
					</tr>
						<tr height="40">
						<td width="150"><h5>이름</h5></td>
						<td width="250"><input class="form-control" type="text" name="u_name" id="name"></td>
					</tr>
						<tr height="40">
						<td width="150"><h5>주소</h5></td>
						<td width="250"><input class="form-control" type="text" name="u_address" id="address"></td>
					</tr>
						<tr height="40">
						<td width="150"><h5>전화</h5></td>
						<td width="250"><input class="form-control" type="text" name="u_phone"></td>
					</tr>
						<tr height="40">
					</td>
					</tr>
					<tr>
				<td>사용권한</td>
				<td><select name="authority">
						<option value="ROLE_USER">일반사용자</option>
						<option value="ROLE_ADMIN">관리자</option>
				</select>
					<td colspan="2"><input type="submit" value="회원가입" class="btn btn-default"
            onclick="p_addImpl()">
				
				<div id = "showdata" style = "text-align: center"></div>
			</tr>
						<td style="text-align:left" colspan="3"><h5 style="color:red;" id="passwordCheckMessage"></h5></td>
				</table>
	</form>
			<div style="margin: 10px 0px 30px 0px">	
<img src="${path }/resources/captcha.jpg" id="captchaImg" alt="captcha img">
<input type="text" placeholder="보안문자를 입력하세요" name="captcha"  id="captcha">
<a onclick="imgRefresh()" id="refreshBtn" ><i class="glyphicon glyphicon-refresh"></i></a>

<button class="btn btn-success" id="confirm" type="button">확인</button>
</div>
	</center>
	</div>
	</div>
</body>
</html>