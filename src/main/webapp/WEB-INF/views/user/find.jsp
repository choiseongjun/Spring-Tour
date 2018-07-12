<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../Header.jsp" %>
<head>
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
$(document).on('click','#findId',function(){
	var u_name= $('#u_name').val();
 	var u_phone = $('#u_phone').val();

 	var postData = {'u_name' : u_name , 'u_phone' :u_phone};
	$.ajax({
        url:'${path}/user/findidimpl.do',
        type:'POST',
       data:postData,
        success:function(data){
        	var u_idlist = data.u_id;
       
        	var u_idfind = u_idlist;
       	 		 $("#u_idlist").append("<h1>"+"회원님의 정보로 등록된 아이디는 : "+data+" 입니다.</h1>")

        },
        error: function (XMLHttpRequest, textStatus, errorThrown){

        	alert('정보를 다시 입력해주시길 바랍니다.' );
        }
    });
});
</script>
</head>

<body>
<div id="content">
<center>

<table border="0" width="400px" style="margin-top: 100px">
	<tr>
		<td><h5>이름</h5></td>
		<td><input type="text" name="u_name" id="u_name" ></td>
		</tr>
		<tr>
			<td><h5>휴대폰번호</h5></td>
			<td><input type="text" name="u_phone" id="u_phone"></td>
		</tr>
	<tr>
	<td colspan="2"><button id="findId" class="btn btn-default">아이디 찾기</button></td>
	</tr>
	<td>${udto.u_id }</td>
	<span id="u_idlist"></span>
		</table>
		</center>
		</div>
</body>

</html>