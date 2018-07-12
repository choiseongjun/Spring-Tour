<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp"%>

<script>
	$(function() {
		$("#btnWrite").click(function() {
			location.href = "${path}/Board/write.do";
		});
	});
	function list(page) {
		location.href = "${path}/Board/list.do?curPage=" + page;
	}
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
 <div id="container1">
	<div id="content">
	  <div align="right">
		<center>
		<h2>게시판</h2>
		<!-- 검색 -->
		<form name="form1" method="post" action="${path }/Board/list.do">
			<select name="search_option">
		<option value="name"
<c:if test="${map.search_option == 'name'}">selected</c:if>
		>이름</option>
		<option value="title" 
<c:if test="${map.search_option == 'title'}">selected</c:if>
		>제목</option>
		<option value="content" 
<c:if test="${map.search_option == 'content'}">selected</c:if>
		>내용</option>
		<option value="all" 
<c:if test="${map.search_option == 'all'}">selected</c:if>
		>이름+내용+제목</option>
	</select>
		<input name="keyword" value="${map.keyword}">
	<input type="submit" value="조회">
		</form>
			<button type="button" id="btnWrite">글쓰기</button>

			${map.count}개의 게시물이 있습니다.
			
			   <table class="table table-striped table-bordered table-hover">

				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>이름</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				<!-- foreac var="개별데이터" items="집합데이터" -->
				<c:forEach var="row" items="${map.list}">
					<tr>
						<td>${row.bno}</td>
						<td width="200px">
						<a href="${path }/Board/view.do?bno=${row.bno}" >
						${row.title }</a>
						<c:if test="${row.cnt >0}">
						<span style="color:red;">(${row.cnt })</span>
						</c:if>
						</td>
						<td>${row.writer}</td>
						<td><fmt:formatDate value="${row.regdate}"
								pattern="yyyy-MM-dd HH:mm:ss" /></td>
						<td>${row.viewcnt}</td>
					</tr>
				</c:forEach>
				<!-- 페이지 네비게이션 출력 -->

				<tr>
		<td colspan="5" align="center">
			<c:if test="${map.pager.curBlock > 1}">
				<a href="#"  onclick="list('1')" >[처음]</a>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<a href="#" onclick="list('${map.pager.prevPage}')">
				[이전]</a>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<span style="color:red;">${num}</span>
					</c:when>
					<c:otherwise>
						<a href="#" onclick="list('${num}')" >${num}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<%-- <c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<a href="#" 
				onclick="list('${map.pager.nextPage}')">[다음]</a>
			</c:if> --%>
			<c:if test="${map.pager.curPage < map.pager.totpage}">
				<a href="#" 
				onclick="list('${map.pager.totpage}')" aria-label="[끝]">[끝]</a>
			</c:if>
		</td>
	</tr>

</table>
		</center>
	</div>
	</div>
</div>
</body>
</html>