<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp" %>
<style>
 #map {
   width: 100%;
   height: 400px;
   background-color: grey;
 }
</style>
  <script>
  
      function initMap() {
        var uluru = {lat:35.1525965, lng: 129.1113738};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 19,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCa5zB9xiTXHYE3BbISvfZ38LQY7d7RPoc&callback=initMap">
    </script>
</head>
<body>
<div id="content">
<center>
<h2>이메일 보내기</h2>
<form action="${path }/email/send.do" method="post">
발신자 이름:<input name="senderName"><br>
발신자 이메일:<input name="senderMail"><br>
수신자 이메일:<input name="receiveMail"><br>
제목:<input name="subject"><br>
내용:<textarea rows="5" cols="80" name="message"></textarea>
<br>
<input type="submit" value= "전송">
</form>
<span style="color:red;">${message }</span>
<div id="map"></div>

</center>
</div>
</body>
</html>