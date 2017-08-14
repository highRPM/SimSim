<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<style type="text/css">
html, body { margin: 0; }

#visual {
  position: relative;
  height: 1080px;
  text-align: center;
  overflow: hidden;
}

#video-bg, #visual-content {
    position: absolute;
  top: 50%;
  left: 50%;
  webkit-transform: translateX(-50%) translateY(-50%);
  transform: translateX(-50%) translateY(-50%);
  width: 100%;
}

#video-bg {
  height: 100%;
  background: #000; /* 배경 이미지로 대체 가능 */
  background-size: cover;
  z-index: -100;
}

#video-bg iframe {
  border: none;
  width: 100%;
  height: 100%;
}

#visual-content {
  z-index: 100;
}

h1 {
  font-size: 42px;
  font-weight: normal;
    color: #fff;
  margin-bottom: 60px;
  text-shadow: black 0px 0px 15px; 
}

.visual-btn{
  color: #fff;
  font-size: 20px;
  border: 2px solid #fff;
  padding: 12px 24px;
  border-radius: 5px;
  cursor: pointer;
  text-shadow: black 0px 0px 15px; 
}
</style>
<script type="text/javascript">

if ($(window).width()>500) {
  $('#video-bg iframe').css('display','block');
  $('#video-bg').css('height', $(window).width()*0.57);
}
else $('#video-bg iframe').css('display','none');
</script>
</head>
<body>
<div id="visual">
  <div id="video-bg">
    <iframe src="https://www.youtube.com/embed/fLjBScAir3w?autoplay=1&controls=0&vq=hd1080&showinfo=0&wmode=opaque&autohide=1&loop=1&playlist=cZcsko5a9lE">
    </iframe>
  </div>
  <div id="visual-content">
    <h1>오늘 어때? 한번에 알려줄게!</h1>
 	<se:authorize access="isAnonymous()">
    		<a href="/hwan/signUp.do"><span class="visual-btn">회원가입</span></a>
    		<a href="/hwan/login.do"><span class="visual-btn">로그인</span></a>
    </se:authorize>
    <se:authorize access="isAuthenticated()">
    		<a href="/hwan/map/mapView.do"><span class="visual-btn">들어가기</span></a>
 	</se:authorize>
  	<se:authentication var="user" property="principal"/>
  </div>
</div>
</body>
<script type="text/javascript">
	
</script>
</html>