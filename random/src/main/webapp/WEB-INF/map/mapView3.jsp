<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/hwan/resources/css/InfoWindowCSS.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=a842ca1f81f0252385766a5690eb2ce4&libraries=services,clusterer,drawing"></script>
<script src="/hwan/resources/js/mapView.js"></script>

<style>
	#map {
		position: relative;
	}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 720px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>

<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
  
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-1 sidenav">
      <p><a href="/hwan/map/mapChoose.do?choose=PM25">PM2.5 농도</a></p>
      <p><a href="/hwan/map/mapChoose.do?choose=PM10">PM10 농도</a></p>
      <p><a href="#">방사능수치</a></p>
      <p><a href="/hwan/map/foodRandom.do">음식점 랜덤 선택</a></p>
    </div><!-- 왼쪽 사이드메뉴 -->
    <div class="col-sm-9 text-left"> 
    	<div id="map" style="width: 100%;height: 720px"></div>
    </div><!-- 본문 메인 지도 -->
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div><!-- 오른쪽 사이드 -->
  </div>
</div>

<footer class="container-fluid text-center">
  <p>사용된 API</p>
  <h6>전국 방사능 API, 다음지도, 전국날씨, 전국 미세먼지농도</h6>
</footer>

</body>

<script type="text/javascript">
	 container = document.getElementById("map");
	var options = {
			center: new daum.maps.LatLng(35.952925, 126.936096),
			level: 13
	}
	map = new daum.maps.Map(container, options);
	pm10mise(${choList}, '${mise}');
</script>

</html>