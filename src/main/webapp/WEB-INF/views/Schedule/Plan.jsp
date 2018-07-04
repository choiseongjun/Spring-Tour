<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp" %>
<link rel="stylesheet" type="text/css" href="${path }/resources/style/css/fullcalendar.css" />
<link rel="stylesheet" type="text/css" href="${path }/resources/style/css/fullcalendar.min.css" />
<script type="text/javascript" src="<c:url value='resources/style/js/fullcalendar.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/style/js/fullcalendar.min.js'/>"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(function(){
	 calendarEvent();
	});
	function calendarEvent(eventData){
	 $("#calender").html("");
	 var date = new Date();
	 var d = date.getDate();
	 var m = date.getMonth();
	 var y = date.getFullYear();
	 var calendar = $('#calender').fullCalendar({
	  header: {
	   left: "",
	   center: "title",
//	    right: "month,basicWeek,basicDay"
	   right: "today prev,next"
	   },
	   editable: true,
	   titleFormat: {
	   month: "yyyy년 MMMM",
	   week: "[yyyy] MMM dd일{ [yyyy] MMM dd일}",
	   day: "yyyy년 MMM d일 dddd"
	   },
	   allDayDefault: false,
	   defaultView: "month",
	   editable: false,
	   monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
	   monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
	   dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
	   dayNamesShort: ["일","월","화","수","목","금","토"],
	   buttonText: {
	   today : "오늘",
	   month : "월별",
	   week : "주별",
	   day : "일별",
	   },
	   events : eventData,
	   timeFormat : "HH:mm",
	 })
</script>
<body>
<div id="calender"></div>
</body>
</html>