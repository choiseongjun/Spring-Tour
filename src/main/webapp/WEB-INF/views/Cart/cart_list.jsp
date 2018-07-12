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
 <style>
    #container1 {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
     
    #list {
      text-align: center;
    }
   
    #write {
      text-align: right;
    }
     
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
  </style>
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
			<table class="table table-striped table-bordered table-hover">
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
							<td>${row.p_date.substring(0,10) }</td>
							<td><img src="${path }/images/${row.p_img}" width="100px"
					height="300px"></td>
							<td>

	
		<a href="${path }/Cart/delete.do?r_id=${row.r_id}">취소하기</a></td>
						
							
					</tr>
					
	
				</c:forEach>
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