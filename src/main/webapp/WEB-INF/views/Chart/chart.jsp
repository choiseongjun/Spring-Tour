<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/chart/chart02.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" >


var xhr = new XMLHttpRequest();
var url = 'http://openapi.tago.go.kr/openapi/service/DmstcFlightNvgInfoService/getAirmanList;
var queryParams = '?' + encodeURIComponent('agzBYd3hHqfkmkq4pAux9zj6AZT0LWinXK5QEFNk54pnE6lkvD1da86dHFc1PLoWUlmBLIQLW99Ns2phhtvnng%3D%3D') + '='+'서비스키'; /*Service Key*/
queryParams += '&' + encodeURIComponent('airlineId') + '=' + encodeURIComponent('airlineNm'); /*파라미터설명*/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+' Headers: '+JSON.stringify(this.getAllResponseHeaders())+' Body: '+this.responseText);
    }
};

xhr.send('service');

</script>
<%@ include file="../Header.jsp" %>
</head>
<body>
<div id="content">
<div id="chart_div"></div>
<button id="btn" type="button" 
	onclick="drawChart">refresh</button>
	<div id="service"></div>
</div>
</body>
</html>