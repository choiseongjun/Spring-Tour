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
		location.href = "${path}/board/list.do?curPage=" + page;
	}
</script>
</head>
<body>
	<div id="content">
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
			<table border="1" width="600px">
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
						<td>
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
				<a href="#" onclick="list('1')">[처음]</a>
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
						<a href="#" onclick="list('${num}')">${num}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<a href="#" 
				onclick="list('${map.pager.nextPage}')">[다음]</a>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totpage}">
				<a href="#" 
				onclick="list('${map.pager.totpage}')">[끝]</a>
			</c:if>
		</td>
	</tr>
</table>
		</center>
	</div>
</body>
</html>