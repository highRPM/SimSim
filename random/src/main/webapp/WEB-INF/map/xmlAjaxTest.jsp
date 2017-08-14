<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 body {
      position: relative;
  }

  #listGroup{
  	overflow: scroll;
  	height: 700px;
  	
  }
	.scrollBlind{
    	width:288px;
    	height:80px;
   		overflow : auto;
    	background-color: white;
} 
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}

.info1 {position:relative;top:5px;left:5px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;font-size:12px;padding:5px;background:#fff;list-style:none;margin:0;} 
.info:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
.info .label {display:inline-block;width:50px;}
.number {font-weight:bold;color:#00a0e9;} 

.checkbox {
    padding-left: 20px; }
.checkbox label {
    display: inline-block;
    position: relative;
    padding-left: 5px; }
.checkbox label::before {
    content: "";
    display: inline-block;
    position: absolute;
    width: 17px;
    height: 17px;
    left: 0;
    margin-left: -20px;
    border: 1px solid #cccccc;
    border-radius: 3px;
    background-color: #fff;
    -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
    -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
    transition: border 0.15s ease-in-out, color 0.15s ease-in-out; }
.checkbox label::after {
    display: inline-block;
    position: absolute;
    width: 16px;
    height: 16px;
    left: 0;
    top: 0;
    margin-left: -20px;
    padding-left: 3px;
    padding-top: 1px;
    font-size: 11px;
    color: #555555; }
.checkbox input[type="checkbox"] {
    opacity: 0; }
.checkbox input[type="checkbox"]:focus + label::before {
    outline: thin dotted;
    outline: 5px auto -webkit-focus-ring-color;
    outline-offset: -2px; }
.checkbox input[type="checkbox"]:checked + label::after {
    font-family: 'FontAwesome';
    content: "\f00c"; }
.checkbox input[type="checkbox"]:disabled + label {
    opacity: 0.65; }
.checkbox input[type="checkbox"]:disabled + label::before {
    background-color: #eeeeee;
    cursor: not-allowed; }
.checkbox.checkbox-circle label::before {
    border-radius: 50%; }
.checkbox.checkbox-inline {
    margin-top: 0; }

.checkbox-primary input[type="checkbox"]:checked + label::before {
    background-color: #428bca;
    border-color: #428bca; }
.checkbox-primary input[type="checkbox"]:checked + label::after {
    color: #fff; }

.checkbox-danger input[type="checkbox"]:checked + label::before {
    background-color: #d9534f;
    border-color: #d9534f; }
.checkbox-danger input[type="checkbox"]:checked + label::after {
    color: #fff; }

.checkbox-info input[type="checkbox"]:checked + label::before {
    background-color: #5bc0de;
    border-color: #5bc0de; }
.checkbox-info input[type="checkbox"]:checked + label::after {
    color: #fff; }

.checkbox-warning input[type="checkbox"]:checked + label::before {
    background-color: #f0ad4e;
    border-color: #f0ad4e; }
.checkbox-warning input[type="checkbox"]:checked + label::after {
    color: #fff; }

.checkbox-success input[type="checkbox"]:checked + label::before {
    background-color: #5cb85c;
    border-color: #5cb85c; }
.checkbox-success input[type="checkbox"]:checked + label::after {
    color: #fff; }

.radio {
    padding-left: 20px; }
.radio label {
    display: inline-block;
    position: relative;
    padding-left: 5px; }
.radio label::before {
    content: "";
    display: inline-block;
    position: absolute;
    width: 17px;
    height: 17px;
    left: 0;
    margin-left: -20px;
    border: 1px solid #cccccc;
    border-radius: 50%;
    background-color: #fff;
    -webkit-transition: border 0.15s ease-in-out;
    -o-transition: border 0.15s ease-in-out;
    transition: border 0.15s ease-in-out; }
.radio label::after {
    display: inline-block;
    position: absolute;
    content: " ";
    width: 11px;
    height: 11px;
    left: 3px;
    top: 3px;
    margin-left: -20px;
    border-radius: 50%;
    background-color: #555555;
    -webkit-transform: scale(0, 0);
    -ms-transform: scale(0, 0);
    -o-transform: scale(0, 0);
    transform: scale(0, 0);
    -webkit-transition: -webkit-transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33);
    -moz-transition: -moz-transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33);
    -o-transition: -o-transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33);
    transition: transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33); }
.radio input[type="radio"] {
    opacity: 0; }
.radio input[type="radio"]:focus + label::before {
    outline: thin dotted;
    outline: 5px auto -webkit-focus-ring-color;
    outline-offset: -2px; }
.radio input[type="radio"]:checked + label::after {
    -webkit-transform: scale(1, 1);
    -ms-transform: scale(1, 1);
    -o-transform: scale(1, 1);
    transform: scale(1, 1); }
.radio input[type="radio"]:disabled + label {
    opacity: 0.65; }
.radio input[type="radio"]:disabled + label::before {
    cursor: not-allowed; }
.radio.radio-inline {
    margin-top: 0; }

.radio-primary input[type="radio"] + label::after {
    background-color: #428bca; }
.radio-primary input[type="radio"]:checked + label::before {
    border-color: #428bca; }
.radio-primary input[type="radio"]:checked + label::after {
    background-color: #428bca; }

.radio-danger input[type="radio"] + label::after {
    background-color: #d9534f; }
.radio-danger input[type="radio"]:checked + label::before {
    border-color: #d9534f; }
.radio-danger input[type="radio"]:checked + label::after {
    background-color: #d9534f; }

.radio-info input[type="radio"] + label::after {
    background-color: #5bc0de; }
.radio-info input[type="radio"]:checked + label::before {
    border-color: #5bc0de; }
.radio-info input[type="radio"]:checked + label::after {
    background-color: #5bc0de; }

.radio-warning input[type="radio"] + label::after {
    background-color: #f0ad4e; }
.radio-warning input[type="radio"]:checked + label::before {
    border-color: #f0ad4e; }
.radio-warning input[type="radio"]:checked + label::after {
    background-color: #f0ad4e; }

.radio-success input[type="radio"] + label::after {
    background-color: #5cb85c; }
.radio-success input[type="radio"]:checked + label::before {
    border-color: #5cb85c; }
.radio-success input[type="radio"]:checked + label::after {
    background-color: #5cb85c; }
</style>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js">
</script>

<script>
	latlng = null;
	overlay = null;
	endStation = new Array();
	insName = new Array();
	insTag = new Array();
	insTag2 = new Array();
	insCityCode = new Array();
	insNodeID = new Array();
	busID = new Array();
	marker=null;
	radius = null;
	polyline = null;
	var xx, yy;
	latlng = null;
	overlay = null;
	info = new Array();
	SX = new Array();
	SY = new Array();
	sC = new Array();
	STN = new Array();
	endStation = new Array();
	insName = new Array();
	insTag = new Array();
	insTag2 = new Array();
	insCityCode = new Array();
	insNodeID = new Array();
	busID = new Array();
	marker=null;
	radius = null;
	polyline = null;
	$(document).ready(function() {
		
		
		//-----------------------------------------------------------------------
				$("#find").click(function() {
					$.ajax({
						url : "/daumweb/FindRoad",
						data : {
							"slocx" : y[0],
							"slocy" : x[0],
							"dlocx" : y[1],
							"dlocy" : x[1],
						},
						success : function(xml) {
							xml = $(xml);
							xml.find("stations").each(function(i) {
								insName.push($(this).find('stationName').text());
								insTag.push($(this).find('x').text());
								insTag2.push($(this).find('y').text());
								insCityCode.push($(this).find('stationID').text());
							});
							xml.find("subPath").each(function(i) {
								insCityCode.push($(this).find('busNo').text());
								endStation.push($(this).find('endID').text());
							});
							alert(endStation[1])
							alert(insCityCode)
							message = new Array()
							var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
							sx = y[0]
							sy = x[0]
							for (var j = 0; j < insName.length; j++) {
								var locPosition = new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
									message = '<div style="padding:5px;">' + insName[j] + '</div>'; // 인포윈도우에 표시될 내용입니다

								// 마커와 인포윈도우를 표시합니다
									//displayMarker(locPosition, message);

								// 마커 이미지의 이미지 크기 입니다
								var imageSize = new daum.maps.Size(24, 35);

								// 마커 이미지를 생성합니다    
								var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
								
								
								var marker = new daum.maps.Marker({
									
									map : map, // 마커를 표시할 지도
									position : new daum.maps.LatLng(insTag2[j],insTag[j]),
									//position : new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커를 표시할 위치
									title : insName[j], // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
									name : insNodeID[j],
								//image : markerImage // 마커 이미지  
								});
								x = insTag2[j]
								y = insTag[j]
								line()
								sx = x
								sy = y
								marker.setMap(map);
								var infowindow = new daum.maps.InfoWindow({
									content : message
								});
									daum.maps.event.addListener(marker, 'click', makeClickListener(map, marker,x, y));
									daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
								    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
							}
							
							function makeOverListener(map, marker, infowindow) {
							    return function() {
							        infowindow.open(map, marker);
						
							    };
							}
							function makeOutListener(infowindow) {
							    return function() {
							        infowindow.close();
							    };
							}
							function makeClickListener(map, marker, x, y){
								return function(){

								}
							}
						}
					});
				});
				$("#farfind").click(function() {
					$.ajax({
						url : "/daumweb/FindOtherRoad",
						data : {
							"slocx" : y[0],
							"slocy" : x[0],
							"dlocx" : y[1],
							"dlocy" : x[1],
						},
						success : function(xml) {
							xml = $(xml);
							xml.find("OBJ").each(function(i) {						
								STN.push($(this).find('startSTN').text());
								STN.push($(this).find('endSTN').text());
								SX.push($(this).find('SY').text());
								SY.push($(this).find('SX').text());
								SX.push($(this).find('EY').text());
								SY.push($(this).find('EX').text());
								info.push($(this).find('payment').text()); 
								info.push($(this).find('time').text()); 
							});
							xml.find("result").each(function(i) {						
								sC.push($(this).find('startCityName').text());
								sC.push($(this).find('endCityName').text()); 
								insCityCode.push($(this).find('endCID').text());
							});
							alert(info)
							message = new Array()
							var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
							sx = y[0]
							sy = x[0]
							xx = y[1]
							yy = x[1]
							for (var j = 0; j < 2; j++) {
								var locPosition = new daum.maps.LatLng(SX[j], SY[j]), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
									message = '<div style="padding:5px;">'+STN[j]+' '+info[0]+'원 '+info[1]+'분</div>'; // 인포윈도우에 표시될 내용입니다

								// 마커와 인포윈도우를 표시합니다
									//displayMarker(locPosition, message);

								// 마커 이미지의 이미지 크기 입니다
								var imageSize = new daum.maps.Size(24, 35);

								// 마커 이미지를 생성합니다    
								var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
								
								
								var marker = new daum.maps.Marker({
									
									map : map, // 마커를 표시할 지도
									position : new daum.maps.LatLng(SX[j],SY[j]),
									//position : new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커를 표시할 위치
									title : STN[j], // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
									name : sC[j],
								//image : markerImage // 마커 이미지  
								});
								x = SX[j]
								y = SY[j]
								line()
								sx = x
								sy = y
								marker.setMap(map);
								var infowindow = new daum.maps.InfoWindow({
									content : message
								});
									daum.maps.event.addListener(marker, 'click', makeClickListener(map, marker,x, y));
									daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
								    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
							}
							sx=xx
							sy=yy
							line()

							function makeOverListener(map, marker, infowindow) {
							    return function() {
							        infowindow.open(map, marker);
						
							    };
							}
							function makeOutListener(infowindow) {
							    return function() {
							        infowindow.close();
							    };
							}
							function makeClickListener(map, marker, x, y){
								return function(){

								}
							}
						}
					});
				});
				//-----------------------------------------------------------------------
		
		
		
		$("#find").click(function() {
			$.ajax({
				url : "/daumweb/FindRoad",
				data : {
					"slocx" : y[0],
					"slocy" : x[0],
					"dlocx" : y[1],
					"dlocy" : x[1],
				},
				success : function(xml) {
					xml = $(xml);
					xml.find("stations").each(function(i) {
						insName.push($(this).find('stationName').text());
						insTag.push($(this).find('x').text());
						insTag2.push($(this).find('y').text());
						insCityCode.push($(this).find('stationID').text());
					});
					xml.find("subPath").each(function(i) {
						insCityCode.push($(this).find('busNo').text());
						endStation.push($(this).find('endID').text());
					});
					alert(endStation[1])
					alert(insCityCode)
					message = new Array()
					var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
					sx = y[0]
					sy = x[0]
					for (var j = 0; j < insName.length; j++) {
						var locPosition = new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
							message = '<div style="padding:5px;">' + insName[j] + '</div>'; // 인포윈도우에 표시될 내용입니다

						// 마커와 인포윈도우를 표시합니다
							//displayMarker(locPosition, message);

						// 마커 이미지의 이미지 크기 입니다
						var imageSize = new daum.maps.Size(24, 35);

						// 마커 이미지를 생성합니다    
						var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
						
						
						var marker = new daum.maps.Marker({
							
							map : map, // 마커를 표시할 지도
							position : new daum.maps.LatLng(insTag2[j],insTag[j]),
							//position : new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커를 표시할 위치
							title : insName[j], // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
							name : insNodeID[j],
						//image : markerImage // 마커 이미지  
						});
						x = insTag2[j]
						y = insTag[j]
						line()
						if(endStation[1]==insCityCode[j]){
							break;
						}
						sx = x
						sy = y
						marker.setMap(map);
						var infowindow = new daum.maps.InfoWindow({
							content : message
						});
							daum.maps.event.addListener(marker, 'click', makeClickListener(map, marker,x, y));
							daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
						    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					}
					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
				
					    };
					}
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
					function makeClickListener(map, marker, x, y){
						return function(){

						}
					}
				}
			});
		});
		$("#inin").click(function() {
			$.ajax({
				url : "/daumweb/XmlAjax",
				data : {
					"locc" : loc1,
					"locc2" : loc2,
					"radius" : radius,
				},
				success : function(xml) {
					xml = $(xml);
					//xml.find("item").each(function(i) {
					xml.find("station").each(function(i) {
						insName.push($(this).find('stationName').text());
						insCityCode.push($(this).find('citycode').text());
						insTag.push($(this).find('x').text());
						insTag2.push($(this).find('y').text());
						insNodeID.push($(this).find('stationID').text());
						
				


					////////////////////////////
					});
					message = new Array()
					var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
					//-----------------------------------클러스터 마커위치
					
					//----------------------------------클러스터 마커 끝
					for (var j = 0; j < insName.length; j++) {
						
					
						var locPosition = new daum.maps.LatLng(insTag[j], insTag2[j]),
						//var locPosition = new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
							message = '<div style="padding:5px;">' + insName[j] + '</div>'; // 인포윈도우에 표시될 내용입니다

						// 마커와 인포윈도우를 표시합니다
							//displayMarker(locPosition, message);

						// 마커 이미지의 이미지 크기 입니다
						var imageSize = new daum.maps.Size(24, 35);

						// 마커 이미지를 생성합니다    
						var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
						
						
						var marker = new daum.maps.Marker({
							
							map : map, // 마커를 표시할 지도
							//position : new daum.maps.LatLng(insTag[j],insTag2[j]),
							position : new daum.maps.LatLng(insTag2[j], insTag[j]), // 마커를 표시할 위치
							//title : [insNodeID[j],insCityCode[j]],// 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
							title : insNodeID[j],
							
						//image : markerImage // 마커 이미지  
						});
						
						
						//marker.setMap(map);
						var infowindow = new daum.maps.InfoWindow({
							content : message
						});
							daum.maps.event.addListener(marker, 'click', makeClickListener(map, marker));
							daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
						    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));

					}
					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
				
					    };
					}
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
					function makeClickListener(map, marker){
						return function(){
							
							markerInfo = marker.getTitle();
							
							$.ajax({
								url : "/daumweb/BusArrInfo",
								data : {
									"markerInfo" : markerInfo
								},
								success : function(xml) {
									busNo = new Array();
									busFirst = new Array();
									busLast = new Array();
									busInterval = new Array();
									xml = $(xml);
									xml.find('lane').each(function(){
										/* alert("버스타입"+$(this).find("busNo").text()+"// 버스번호"+$(this).find("busNo").text()+
												"도착예정시간"+$(this).find("busFirstTime").text()) */
										busNo.push($(this).find('busNo').text());
										busFirst.push($(this).find("busFirstTime").text());
										busLast.push($(this).find("busLastTime").text());
										busInterval.push($(this).find("busInterval").text());
										busID.push($(this).find("busID").text())
										
									});//each문 괄호
									var content="";
									var quest = inner();
									function inner(){
										content = '<div class="wrap">' + 
							            '    <div class="info">' + 
							            '        <div class="title">' + 
							            '            버스정보' + 
							            '            <div class="close" onclick="closeOverlay(marker)" title="닫기"></div>' + 
							            '        </div>' + 
							            '        <div class="body">' + 
							            '		<div class="scrollBlind">'+
							            '		<ul >';

										for(i=0; i<busNo.length; i++){
											//content+="<tr>";
											content+="<li><a href='javascript:busline("+busID[i]+")'>"+busNo[i]+"번</a>-첫차 : "+busFirst[i]+"  막차 : "+busLast[i]+"  운행간격 : "+busInterval[i]+"분</li>";
											//content+="</tr>";
										}
										content+= 
											'		</ul>'+	
											' 		</div>' + 
							            
							            '        </div>' + 
							            '    </div>' +    
							            '</div>';
									}
																					
									overlay = new daum.maps.CustomOverlay({
										content : content,
										map : map,
										position : marker.getPosition()
									});
									daum.maps.event.addListener(marker, 'click', function() {
									    overlay.setMap(map);
									});
									markers.push(overlay);
								}
								
							});	
							
						}
						
					}
				}
			});

		});

	});
	function closeOverlay(){
		for(var i=0; i<markers.length; i++){
			
				 markers[i].setMap(null);
			
		}
		markers=[];
	}


	
</script>
<!-- 여기서 부터는 길 찾기 관련 함수들 이다.//////////////////////////////////// -->
<script type="text/javascript">
	bClass = new Array();//1 버스노선 2 지하철 노선
	bType = new Array();//교통타입
	bx = new Array();
	by = new Array();
	sx=null;
	sy=null;
	var x = new Array();
	var y = new Array();
	$(document).ready(function(){
		$('#select').click(function(){
			if(y.length<2){
				y.push(latlng.getLat())
				x.push(latlng.getLng())
				
			}else{
				alert("출발지와 목적지는 각각 1개씩만 선택이 가능 합니다. 다시 지정하고 싶으시면 새로고침을 눌러주세요");
			}
			
		
			latlng.getLat();
			latlng.getLng();
		});
		
	//});
});
	function busline(busid){
		//$('#search').click(function(){
			  //$("#draw").click(function() {
				 
			         $.ajax({
			            url : "/daumweb/DrawLine",
			            data : {
			               "busID" : busid,
			            },
			            success : function(xml) {
			               xml = $(xml);
			               xml.find("graphPos").each(function(i) {
			            	   bClass.push($(this).find('class').text());
			                  insCityCode.push($(this).find('type').text());
			                  bx.push($(this).find('x').text());
			                  by.push($(this).find('y').text());
			                
			                  
			               });
			               
			               message = new Array()
			               var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
			              
			               sx = (37+by[0])-333
			               sy = (126+bx[0])-1134
			              // alert(eX)
			               for (var j = 0; j < bClass.length; j++) {
			                  var locPosition = new daum.maps.LatLng(by[j], bx[j]), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			                     message = '<div style="padding:5px;">' + bClass[j] + '</div>'; // 인포윈도우에 표시될 내용입니다

			             
			                  x = by[j]
			                  x = (37+x)-333
			                  y = bx[j]
			                  y = (126+y)-1134
			                  line()
			                 //alert(x)
	                           sx = x
	                           sy = y
			                  /* if(-0.00003<(x-stX)&&(x-stX)<0.00003){
			                     z=1
			                     alert("들어옴")*/
			                     for (var i = j; i < bClass.length; i++) {
			                       
			                           x = by[i]
			                           x = (37+x)-333
			                           y = bx[i]
			                           y = (126+y)-1134
			                         
			                      }
			                   //  }j=i
			                  
			                 // }   
			                //  marker.setMap(map);
			                  var infowindow = new daum.maps.InfoWindow({
			                     content : message
			                  });
			                   
			               }
			               
			          
			            }
			         });
			         
			      //여기에 드로우 아이디의 펑션이있었음
		}
	
	function line(){
        // 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
       
        var linePath = [
                  new daum.maps.LatLng(sx, sy),
                  new daum.maps.LatLng(x, y)
              ];
        
        
        // 지도에 표시할 선을 생성합니다
         polyline = new daum.maps.Polyline({
            path: linePath, // 선을 구성하는 좌표배열 입니다
            strokeWeight: 5, // 선의 두께 입니다
            strokeColor: '#FFAE00', // 선의 색깔입니다
            strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다
        });
        // 지도에 선을 표시합니다 
        polyline.setMap(map);         
     }
</script>

<!-- 여기서 부터는 옆에 리스트에 값을 넣어주는 역할을 한다. -->
	<script type="text/javascript">
		$(document).ready(function(){
			$("#insertList").click(function(){
				alert("하이요");	
			});	
			
			
			
				
			
		})
		
		
	</script>

<!-- 여기서 부터는 관광지 정보를 뿌려주는 역할을 한다. /////////////////////////////////////////////-->
<script type="text/javascript">
mapx = new Array();
mapy = new Array();
tTitle = new Array();
addr1 = new Array();
readcount = new Array();
tTel = new Array();
marker=null;
firstimage= new Array();
contentid = new Array();
markers = new Array();//오버래이를 지워주는 역항을 하게 될 변수
count = new Array();
markers2 = new Array();//마커를 지워주는 역할을 한다.
content1=null;


listmapx = new Array();
listmapy = new Array();
listtTitle = new Array();
listaddr1 = new Array();
listreadcount = new Array();
listtTel = new Array();
listmarker=null;
listfirstimage= new Array();
listcontentid = new Array();
listmarkers = new Array();//오버래이를 지워주는 역항을 하게 될 변수
listcount = null;
listOverlay1=null;
listOverlays = new Array();

//listMarkes=new Array();
listContents=new Array();
listMarkers = new Array();
listMarker = null;
counter=0;
$(document).on('click','#insertList1',function(){
	
	for(var i=0; i<tTitle.length; i++){
		
		if(content1==contentid[i]){
			listmapx.push(mapx[i]);
			listmapy.push(mapy[i]);
			listtTitle.push(tTitle[i]); 
			listaddr1.push(addr1[i]);
			listreadcount.push(readcount[i]);
			listtTel.push(tTel[i]);
			listfirstimage.push(firstimage[i]);
			listcontentid.push(contentid[i]);
			
			json = new Object();
			json.mapx1 = mapx[i];
			json.mapy1 = mapy[i];
			json.tTitle1 = tTitle[i];
			json.addr11 = addr1[i];
			json.readcount1 = readcount[i];
			json.tTel1 = tTel[i];
			json.firstimage1 = firstimage[i];
			json.contentid1 = contentid[i];
			 minijson = JSON.stringify(json);
			
			
			$("#listGroup").append("<div id='section1'>"+
			        "<h4>"+tTitle[i]+"</h4>"+
			        "<p><a href='javascript:centerMap("+JSON.stringify(json)+")'>"+addr1[i]+"</a></p>" +
			       
			     "<a href='javascript:deleteMarker("+counter+")' class='remove'>삭제</a></div>")
			     counter++;
			 mapAddr(JSON.stringify(json))
		}
	}
	
});
function centerMap(json11){
	
	map.setCenter(new daum.maps.LatLng(json11.mapy1,json11.mapx1));
}

function mapAddr(jjson){
	jsonobj = JSON.parse(jjson)
	listContents.push(jjson.contentid1);
	map.setCenter(new daum.maps.LatLng(jsonobj.mapy1,jsonobj.mapx1));
	
	listMarker = new daum.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다
	    title : jsonobj.contentid1,
	    position: map.getCenter() 
	}); 

	daum.maps.event.addListener(listMarker,'click',listMarkerListener(map,listMarker, jjson));	
	
	listMarkers.push(listMarker);
	listMarker.setMap(map);
	
	
	function listMarkerListener(map, listMarker, jjson){
		return function(){
			
			
					//alert(jjson.tTitle1);
					lcontent="";
					var quest = listOverlay(jjson);
					function listOverlay(jjson){
						
						lcontent ='<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            해당정보 ' + 
			            '            <div class="close" onclick="closeListOverlay()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' 

						
							
							lcontent+= '<img src='+jsonobj.firstimage1+' width="73" height="70">'+
							 '           </div>' + 
							' <div class="desc">' + 
				            '                <div class="ellipsis"><a href="https://search.naver.com/search.naver?where=nexearch&query='+jsonobj.tTitle1+'&sm=top_hty&fbm=1&ie=euckr" target="_blank">'+jsonobj.tTitle1+'</a></div>' + 
				            '                <div class="jibun ellipsis">'+jsonobj.addr11+'</div>' + 
				            '                <div class="jibun ellipsis">조회수'+jsonobj.readcount1+'전화번호:'+jsonobj.tTel1+'</div>';
				     
				          
						
						lcontent+= 
							 '           </div>' + 
						
							' 		</div>' + 
			            
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
						
					}
					listOverlay1 = new daum.maps.CustomOverlay({
						content : lcontent,
						map : map,
						position : listMarker.getPosition()
					});
					listOverlays.push(listOverlay1);
				
			
			daum.maps.event.addListener(listMarker,'click',function(){
				
				listOverlay1.setMap(map);
			});
			
		}
		
	}
	
	
	
}
function deleteMarker(num){
	

	
	alert(listMarkers[num]);
	ti=listMarkers[num]
	alert(ti.getTitle())
	ti.setMap(null);
	
	
}

function listDelteMarkerListener(map,listMarker, dmjson){
	this.setMap(null);
}

function closeListOverlay(){
			
			for(var i=0; i<listOverlays.length; i++){
				listOverlays[i].setMap(null);
			}
			
	
}

$(document).on('click','.remove', function(){
		$(this).parent().remove();
		
	});


	$(document).ready(function(){
		$('#tourist').click(function(){
			
			closeMarker();
			//alert($(':radio[name="radioInline"]:checked').val());
			serviceID = $(':radio[name="radioInline"]:checked').val()
			
			$.ajax({
				url : "/daumweb/Tourist",
				data : {
					"radius" : radius,
					"x" : latlng.getLng(),
					"y" : latlng.getLat(),
					"serviceID" : serviceID,
				},
				success : function(xml) {
				
					xml = $(xml);
					count1 = 0;
//////////////////////////////////////////////////////////////////////////
					xml.find("item").each(function(i) {
						
						count1++;
						mapx.push($(this).find('mapx').text());
						mapy.push($(this).find('mapy').text());
						tTitle.push($(this).find('title').text());
						addr1.push($(this).find('addr1').text());
						readcount.push($(this).find('readcount').text());
						tTel.push($(this).find('tel').text())
						firstimage.push($(this).find('firstimage').text())
						contentid.push($(this).find('contentid').text())
						count.push($(this).find('readcount').text())
			});
	///////////////////////////////////////////////////////////////////////////////	여기에 마커 포문			
					if(serviceID!=100){
						var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커이미지의 주소입니다    
					    imageSize = new daum.maps.Size(24, 35), // 마커이미지의 크기입니다
					    imageOption = {offset: new daum.maps.Point(27, 69)};
						
						
						var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
						clusterer = new daum.maps.MarkerClusterer({
					        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
					        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
					        minLevel: 10 // 클러스터 할 최소 지도 레벨 
					    });

						for(i=0; i<count1; i++){
						
							marker12 = new daum.maps.Marker({
								map : map, // 마커를 표시할 지도
								//position : new daum.maps.LatLng(insTag[j],insTag2[j]),
								position : new daum.maps.LatLng(mapy[i], mapx[i]), // 마커를 표시할 위치
								//title : [insNodeID[j],insCityCode[j]],// 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
								//title : [tTitle[i],contentid[i]],
								title : contentid[i],	
								image : markerImage // 마커 이미지  
							});
							daum.maps.event.addListener(marker12, 'click', makeClickListener(map, marker12));
							marker12.setMap(map);
							markers2.push(marker12);
							clusterer.addMarkers(markers2);
						
						
					}
					}
					
////////////////////////////////////////////////////////////////////////////////////////////////			
					function makeClickListener(map, marker12){
						return function(){
						content1 = marker12.getTitle();
						
						for(i=0; i<mapx.length; i++){
							if(content1==contentid[i]){
								var content="";
								var quest = inner1();
								function inner1(){
									
									content ='<div class="wrap">' + 
						            '    <div class="info">' + 
						            '        <div class="title">' + 
						            '            해당정보 ' + 
						            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
						            '        </div>' + 
						            '        <div class="body">' + 
						            '            <div class="img">' 

									
										
										content+= '<img src='+firstimage[i]+' width="73" height="70">'+
										 '           </div>' + 
										' <div class="desc">' + 
							            '                <div class="ellipsis"><a href="https://search.naver.com/search.naver?where=nexearch&query='+tTitle[i]+'&sm=top_hty&fbm=1&ie=euckr" target="_blank">'+tTitle[i]+'</a></div>' + 
							            '                <div class="jibun ellipsis">'+addr1[i]+'</div>' + 
							            '                <div class="jibun ellipsis">조회수'+count[i]+'전화번호:'+tTel[i]+'</div>'+
							       	 '                <input type="button" value="리스트에 추가" id="insertList1" class="btn btn-success" />';
							          
									
									content+= 
										 '           </div>' + 
									
										' 		</div>' + 
						            
						            '        </div>' + 
						            '    </div>' +    
						            '</div>';
									
								}
								overlay = new daum.maps.CustomOverlay({
									content : content,
									map : map,
									position : marker12.getPosition()
								});
								markers.push(overlay);
							}
						}
						
						//////////////////////여기에 원래 오버레이 레이아웃이 있었음
					
						/////////////////////////////////////													
						
						////////////////////////////////////
						daum.maps.event.addListener(marker12, 'click', function() {
						    overlay.setMap(map);
						});
						////////////////////////////////
						
						for(var i=0; i<markers.length; i++){
							daum.maps.event.addListener(markers[i], 'click', function(){
							
								alert("라이트클릭")
								this.setMap(null);
							})
							
						}
					};
					};

				////////////
					
			}
				
			});
	});		
});	
function closeMarker(){
	for(var j=0; j<markers2.length; j++){
		clusterer.removeMarker(markers2[j]);
		//markers2[j].setMap(null);
		markers2[j].setMap(null);
		}
	markers2=[];
	mapx = new Array();
	mapy = new Array();
	tTitle = new Array();
	addr1 = new Array();
	readcount = new Array();
	tTel = new Array();
	marker=null;
	firstimage= new Array();
	contentid = new Array();
	markers = new Array();//오버래이를 지워주는 역항을 하게 될 변수
	count = new Array();
	markers2 = new Array();//마커를 지워주는 역할을 한다.
}
function closeOverlay(){
	for(var i=0; i<markers.length; i++){
			
			 markers[i].setMap(null);
			//markers2[i].setMap(null);
	}
	markers=[];
	//markers2=[];
}
	
</script>
</head>
<body>
	<div class="container" style="height: 700px;">
	<div class="row">
	
	<div id="map" style="width: 65%; height: 650px;" class="col-sm-9"></div>
	
	
	
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=a842ca1f81f0252385766a5690eb2ce4&libraries=services,clusterer,drawing"></script>
	<script>
		 var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(37.53, 126.92),
			level : 3
		};
		var map = new daum.maps.Map(container, options); 
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
	
			// 클릭한 위도, 경도 정보를 가져옵니다 
			latlng = mouseEvent.latLng;
	
			loc1 = latlng.getLat();
			loc2 = latlng.getLng();
	
			var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
			message += '경도는 ' + latlng.getLng() + ' 입니다';
	
			var resultDiv = document.getElementById('from');
			resultDiv.innerHTML = message;

		});
		if (navigator.geolocation) {
	
			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {
	
				var lat = position.coords.latitude, // 위도
					lon = position.coords.longitude; // 경도
	
				var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
					message = '<div style="padding:5px;">내 위치는 여기!</div>'; // 인포윈도우에 표시될 내용입니다
	
				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);
	
			});
	
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
	
			var locPosition = new daum.maps.LatLng(33.450701, 126.570667),
				message = 'geolocation을 사용할수 없어요..'
	
			displayMarker(locPosition, message);
		}
	
		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
	
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map,
				position : locPosition
			});
	
			var iwContent = message, // 인포윈도우에 표시할 내용
				iwRemoveable = true;
	
			// 인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});
	
			// 인포윈도우를 마커위에 표시합니다 
			infowindow.open(map, marker);
	
			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}
		var drawingFlag = false; // 원이 그려지고 있는 상태를 가지고 있을 변수입니다
		var centerPosition; // 원의 중심좌표 입니다
		var drawingCircle; // 그려지고 있는 원을 표시할 원 객체입니다
		var drawingLine; // 그려지고 있는 원의 반지름을 표시할 선 객체입니다
		var drawingOverlay; // 그려지고 있는 원의 반경을 표시할 커스텀오버레이 입니다
		var drawingDot; // 그려지고 있는 원의 중심점을 표시할 커스텀오버레이 입니다

		var circles = []; // 클릭으로 그려진 원과 반경 정보를 표시하는 선과 커스텀오버레이를 가지고 있을 배열입니다

		// 지도에 클릭 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'dblclick', function(mouseEvent) {
		        
		    // 클릭 이벤트가 발생했을 때 원을 그리고 있는 상태가 아니면 중심좌표를 클릭한 지점으로 설정합니다
		    if (!drawingFlag) {    
		        
		        // 상태를 그리고있는 상태로 변경합니다
		        drawingFlag = true; 
		        
		        // 원이 그려질 중심좌표를 클릭한 위치로 설정합니다 
		        centerPosition = mouseEvent.latLng; 

		        // 그려지고 있는 원의 반경을 표시할 선 객체를 생성합니다
		        if (!drawingLine) {
		            drawingLine = new daum.maps.Polyline({
		                strokeWeight: 3, // 선의 두께입니다
		                strokeColor: '#00a0e9', // 선의 색깔입니다
		                strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		                strokeStyle: 'solid' // 선의 스타일입니다
		            });    
		        }
		        
		        // 그려지고 있는 원을 표시할 원 객체를 생성합니다
		        if (!drawingCircle) {                    
		            drawingCircle = new daum.maps.Circle({ 
		                strokeWeight: 1, // 선의 두께입니다
		                strokeColor: '#00a0e9', // 선의 색깔입니다
		                strokeOpacity: 0.1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		                strokeStyle: 'solid', // 선의 스타일입니다
		                fillColor: '#00a0e9', // 채우기 색깔입니다
		                fillOpacity: 0.2 // 채우기 불투명도입니다 
		            });     
		        }
		        
		        // 그려지고 있는 원의 반경 정보를 표시할 커스텀오버레이를 생성합니다
		        if (!drawingOverlay) {
		            drawingOverlay = new daum.maps.CustomOverlay({
		                xAnchor: 0,
		                yAnchor: 0,
		                zIndex: 1
		            });              
		        }
		    }
		    });

		// 지도에 마우스무브 이벤트를 등록합니다
		// 원을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 원의 위치와 반경정보를 동적으로 보여주도록 합니다
		daum.maps.event.addListener(map, 'mousemove', function (mouseEvent) {
		        
		    // 마우스무브 이벤트가 발생했을 때 원을 그리고있는 상태이면
		    if (drawingFlag) {

		        // 마우스 커서의 현재 위치를 얻어옵니다 
		        var mousePosition = mouseEvent.latLng; 
		        
		        // 그려지고 있는 선을 표시할 좌표 배열입니다. 클릭한 중심좌표와 마우스커서의 위치로 설정합니다
		        var linePath = [centerPosition, mousePosition];     
		        
		        // 그려지고 있는 선을 표시할 선 객체에 좌표 배열을 설정합니다
		        drawingLine.setPath(linePath);
		        
		        // 원의 반지름을 선 객체를 이용해서 얻어옵니다 
		        var length = drawingLine.getLength();
		        
		        if(length > 0) {
		            
		            // 그려지고 있는 원의 중심좌표와 반지름입니다
		            var circleOptions = { 
		                center : centerPosition, 
		            radius: length,                 
		            };
		            
		            // 그려지고 있는 원의 옵션을 설정합니다
		            drawingCircle.setOptions(circleOptions); 
		                
		            // 반경 정보를 표시할 커스텀오버레이의 내용입니다
		            var radius = Math.round(drawingCircle.getRadius()),   
		            content = '<div class="info">반경 <span class="number">' + radius + '</span>m</div>';
		            
		            // 반경 정보를 표시할 커스텀 오버레이의 좌표를 마우스커서 위치로 설정합니다
		            drawingOverlay.setPosition(mousePosition);
		            
		            // 반경 정보를 표시할 커스텀 오버레이의 표시할 내용을 설정합니다
		            drawingOverlay.setContent(content);
		            
		            // 그려지고 있는 원을 지도에 표시합니다
		            drawingCircle.setMap(map); 
		            
		            // 그려지고 있는 선을 지도에 표시합니다
		            drawingLine.setMap(map);  
		            
		            // 그려지고 있는 원의 반경정보 커스텀 오버레이를 지도에 표시합니다
		            drawingOverlay.setMap(map);
		            
		        } else { 
		            
		            drawingCircle.setMap(null);
		            drawingLine.setMap(null);    
		            drawingOverlay.setMap(null);
		            
		        }
		    }     
		});     

		// 지도에 마우스 오른쪽 클릭이벤트를 등록합니다
		// 원을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면
		// 마우스 오른쪽 클릭한 위치를 기준으로 원과 원의 반경정보를 표시하는 선과 커스텀 오버레이를 표시하고 그리기를 종료합니다
		daum.maps.event.addListener(map, 'rightclick', function (mouseEvent) {

		    if (drawingFlag) {

		        // 마우스로 오른쪽 클릭한 위치입니다 
		        var rClickPosition = mouseEvent.latLng; 

		        // 원의 반경을 표시할 선 객체를 생성합니다
		        var polyline = new daum.maps.Polyline({
		            path: [centerPosition, rClickPosition], // 선을 구성하는 좌표 배열입니다. 원의 중심좌표와 클릭한 위치로 설정합니다
		            strokeWeight: 3, // 선의 두께 입니다
		            strokeColor: '#00a0e9', // 선의 색깔입니다
		            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		            strokeStyle: 'solid' // 선의 스타일입니다
		        });
		        
		        // 원 객체를 생성합니다
		        var circle = new daum.maps.Circle({ 
		            center : centerPosition, // 원의 중심좌표입니다
		            radius: polyline.getLength(), // 원의 반지름입니다 m 단위 이며 선 객체를 이용해서 얻어옵니다
		            strokeWeight: 1, // 선의 두께입니다
		            strokeColor: '#00a0e9', // 선의 색깔입니다
		            strokeOpacity: 0.1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		            strokeStyle: 'solid', // 선의 스타일입니다
		            fillColor: '#00a0e9', // 채우기 색깔입니다
		            fillOpacity: 0.2  // 채우기 불투명도입니다 
		        });
		        
		        var radius = Math.round(circle.getRadius()), // 원의 반경 정보를 얻어옵니다
		            content = getTimeHTML(radius); // 커스텀 오버레이에 표시할 반경 정보입니다

		        
		        // 반경정보를 표시할 커스텀 오버레이를 생성합니다
		        var radiusOverlay = new daum.maps.CustomOverlay({
		            content: content, // 표시할 내용입니다
		            position: rClickPosition, // 표시할 위치입니다. 클릭한 위치로 설정합니다
		            xAnchor: 0,
		            yAnchor: 0,
		            zIndex: 1 
		        });  

		        // 원을 지도에 표시합니다
		        circle.setMap(map); 
		        
		        // 선을 지도에 표시합니다
		        polyline.setMap(map);
		        
		        // 반경 정보 커스텀 오버레이를 지도에 표시합니다
		        radiusOverlay.setMap(map);
		        
		        // 배열에 담을 객체입니다. 원, 선, 커스텀오버레이 객체를 가지고 있습니다
		        var radiusObj = {
		            'polyline' : polyline,
		            'circle' : circle,
		            'overlay' : radiusOverlay
		        };
		        
		        // 배열에 추가합니다
		        // 이 배열을 이용해서 "모두 지우기" 버튼을 클릭했을 때 지도에 그려진 원, 선, 커스텀오버레이들을 지웁니다
		        circles.push(radiusObj);   
		    
		        // 그리기 상태를 그리고 있지 않는 상태로 바꿉니다
		        drawingFlag = false;
		        
		        // 중심 좌표를 초기화 합니다  
		        centerPosition = null;
		        
		        // 그려지고 있는 원, 선, 커스텀오버레이를 지도에서 제거합니다
		        drawingCircle.setMap(null);
		        drawingLine.setMap(null);   
		        drawingOverlay.setMap(null);
		    }
		});    
		
		// 지도에 표시되어 있는 모든 원과 반경정보를 표시하는 선, 커스텀 오버레이를 지도에서 제거합니다
		function removeCircles() {         
		    for (var i = 0; i < circles.length; i++) {
		        circles[i].circle.setMap(null);    
		        circles[i].polyline.setMap(null);
		        circles[i].overlay.setMap(null);
		    }         
		    circles = [];
		}

		// 마우스 우클릭 하여 원 그리기가 종료됐을 때 호출하여 
		// 그려진 원의 반경 정보와 반경에 대한 도보, 자전거 시간을 계산하여
		// HTML Content를 만들어 리턴하는 함수입니다
		function getTimeHTML(distance) {
			radius = distance;
		    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
		    var walkkTime = distance / 67 | 0;
		    var walkHour = '', walkMin = '';

		    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
		    if (walkkTime > 60) {
		        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
		    }
		    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

		    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
		    var bycicleTime = distance / 227 | 0;
		    var bycicleHour = '', bycicleMin = '';

		    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
		    if (bycicleTime > 60) {
		        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
		    }
		    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

		    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
		    var content = '<ul class="info1">';
		    content += '    <li>';
		    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
		    content += '    </li>';
		    content += '    <li>';
		    content += '        <span class="label">도보</span>' + walkHour + walkMin;
		    content += '    </li>';
		    content += '    <li>';
		    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
		    content += '    </li>';
		    content += '</ul>'

		    return content;
		}
		
	</script>
	
	  <div class="col-sm-3" style="width: 30%">
	
	
  <div class="row">
   
    <div class="col-sm-9" id="listGroup">
     <!--  <div id="section1">
        <h1>Section 1</h1>
        <p>Try to scroll this section and look at the navigation list while scrolling!</p>
      </div> -->
     
     
      </div>
      </div>
    </div>
  </div>
</div>

	
	<!-- 여기까지가 컨테이너다. -->
	
	<div class="container">
	<div class="col-sm-12">
	
	<input type="button" value="주변 버스정류장 요청" id="inin" class="btn btn-success"/>
	<input type="button" value="출발지/목적지 설정" id="select" class="btn btn-success" />
	<input type="button" value="목적지까지 길 찾기" id="find" class="btn btn-success" />
	<input type="button" value="도시간 길 찾기" id="farfind" class="btn btn-success" />
	<input type="button" value="주변 관광지 정보 조회" id="tourist" class="btn btn-success" />
	<button class="btn btn-success" onclick="removeCircles()">원 지우기</button>
	<button class="btn btn-success" onclick="closeMarker()">마커지우기</button>
	<input type="button" value="리스트에 추가" id="insertList" class="btn btn-success" />
	<div id="from"></div>
	<div id="test"></div>
	</div>
	
	</div>
	<div class="container">
         <div class="radio radio-info radio-inline">
         	<input type="radio" id="inlineRadio1" value="12" name="radioInline">
         	<label for="inlineRadio1"> 관광지 </label>
         </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio2" value="14" name="radioInline">
            <label for="inlineRadio2"> 문화시설 </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio3" value="15" name="radioInline">
            <label for="inlineRadio3">행사/공연/축제</label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio4" value="25" name="radioInline">
            <label for="inlineRadio4"> 여행코스 </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio5" value="28" name="radioInline">
            <label for="inlineRadio5"> 레포츠 </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio6" value="32" name="radioInline">
            <label for="inlineRadio6"> 숙박 </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio7" value="38" name="radioInline">
            <label for="inlineRadio7"> 쇼핑 </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio8" value="39" name="radioInline">
            <label for="inlineRadio8"> 음식점 </label>
        </div>
        </div>
   

</body>
</html>