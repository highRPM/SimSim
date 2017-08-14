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
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '����', sans-serif;line-height: 1.5;}
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
								var locPosition = new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
									message = '<div style="padding:5px;">' + insName[j] + '</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

								// ��Ŀ�� ���������츦 ǥ���մϴ�
									//displayMarker(locPosition, message);

								// ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
								var imageSize = new daum.maps.Size(24, 35);

								// ��Ŀ �̹����� �����մϴ�    
								var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
								
								
								var marker = new daum.maps.Marker({
									
									map : map, // ��Ŀ�� ǥ���� ����
									position : new daum.maps.LatLng(insTag2[j],insTag[j]),
									//position : new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ���� ��ġ
									title : insName[j], // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
									name : insNodeID[j],
								//image : markerImage // ��Ŀ �̹���  
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
								var locPosition = new daum.maps.LatLng(SX[j], SY[j]), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
									message = '<div style="padding:5px;">'+STN[j]+' '+info[0]+'�� '+info[1]+'��</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

								// ��Ŀ�� ���������츦 ǥ���մϴ�
									//displayMarker(locPosition, message);

								// ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
								var imageSize = new daum.maps.Size(24, 35);

								// ��Ŀ �̹����� �����մϴ�    
								var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
								
								
								var marker = new daum.maps.Marker({
									
									map : map, // ��Ŀ�� ǥ���� ����
									position : new daum.maps.LatLng(SX[j],SY[j]),
									//position : new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ���� ��ġ
									title : STN[j], // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
									name : sC[j],
								//image : markerImage // ��Ŀ �̹���  
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
						var locPosition = new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
							message = '<div style="padding:5px;">' + insName[j] + '</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

						// ��Ŀ�� ���������츦 ǥ���մϴ�
							//displayMarker(locPosition, message);

						// ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
						var imageSize = new daum.maps.Size(24, 35);

						// ��Ŀ �̹����� �����մϴ�    
						var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
						
						
						var marker = new daum.maps.Marker({
							
							map : map, // ��Ŀ�� ǥ���� ����
							position : new daum.maps.LatLng(insTag2[j],insTag[j]),
							//position : new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ���� ��ġ
							title : insName[j], // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
							name : insNodeID[j],
						//image : markerImage // ��Ŀ �̹���  
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
					//-----------------------------------Ŭ������ ��Ŀ��ġ
					
					//----------------------------------Ŭ������ ��Ŀ ��
					for (var j = 0; j < insName.length; j++) {
						
					
						var locPosition = new daum.maps.LatLng(insTag[j], insTag2[j]),
						//var locPosition = new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
							message = '<div style="padding:5px;">' + insName[j] + '</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

						// ��Ŀ�� ���������츦 ǥ���մϴ�
							//displayMarker(locPosition, message);

						// ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
						var imageSize = new daum.maps.Size(24, 35);

						// ��Ŀ �̹����� �����մϴ�    
						var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
						
						
						var marker = new daum.maps.Marker({
							
							map : map, // ��Ŀ�� ǥ���� ����
							//position : new daum.maps.LatLng(insTag[j],insTag2[j]),
							position : new daum.maps.LatLng(insTag2[j], insTag[j]), // ��Ŀ�� ǥ���� ��ġ
							//title : [insNodeID[j],insCityCode[j]],// ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
							title : insNodeID[j],
							
						//image : markerImage // ��Ŀ �̹���  
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
										/* alert("����Ÿ��"+$(this).find("busNo").text()+"// ������ȣ"+$(this).find("busNo").text()+
												"���������ð�"+$(this).find("busFirstTime").text()) */
										busNo.push($(this).find('busNo').text());
										busFirst.push($(this).find("busFirstTime").text());
										busLast.push($(this).find("busLastTime").text());
										busInterval.push($(this).find("busInterval").text());
										busID.push($(this).find("busID").text())
										
									});//each�� ��ȣ
									var content="";
									var quest = inner();
									function inner(){
										content = '<div class="wrap">' + 
							            '    <div class="info">' + 
							            '        <div class="title">' + 
							            '            ��������' + 
							            '            <div class="close" onclick="closeOverlay(marker)" title="�ݱ�"></div>' + 
							            '        </div>' + 
							            '        <div class="body">' + 
							            '		<div class="scrollBlind">'+
							            '		<ul >';

										for(i=0; i<busNo.length; i++){
											//content+="<tr>";
											content+="<li><a href='javascript:busline("+busID[i]+")'>"+busNo[i]+"��</a>-ù�� : "+busFirst[i]+"  ���� : "+busLast[i]+"  ���ణ�� : "+busInterval[i]+"��</li>";
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
<!-- ���⼭ ���ʹ� �� ã�� ���� �Լ��� �̴�.//////////////////////////////////// -->
<script type="text/javascript">
	bClass = new Array();//1 �����뼱 2 ����ö �뼱
	bType = new Array();//����Ÿ��
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
				alert("������� �������� ���� 1������ ������ ���� �մϴ�. �ٽ� �����ϰ� �����ø� ���ΰ�ħ�� �����ּ���");
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
			                  var locPosition = new daum.maps.LatLng(by[j], bx[j]), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
			                     message = '<div style="padding:5px;">' + bClass[j] + '</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

			             
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
			                     alert("����")*/
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
			         
			      //���⿡ ��ο� ���̵��� ������־���
		}
	
	function line(){
        // ���� �����ϴ� ��ǥ �迭�Դϴ�. �� ��ǥ���� �̾ ���� ǥ���մϴ�
       
        var linePath = [
                  new daum.maps.LatLng(sx, sy),
                  new daum.maps.LatLng(x, y)
              ];
        
        
        // ������ ǥ���� ���� �����մϴ�
         polyline = new daum.maps.Polyline({
            path: linePath, // ���� �����ϴ� ��ǥ�迭 �Դϴ�
            strokeWeight: 5, // ���� �β� �Դϴ�
            strokeColor: '#FFAE00', // ���� �����Դϴ�
            strokeOpacity: 0.7, // ���� ������ �Դϴ� 1���� 0 ������ ���̸� 0�� �������� �����մϴ�
            strokeStyle: 'solid' // ���� ��Ÿ���Դϴ�
        });
        // ������ ���� ǥ���մϴ� 
        polyline.setMap(map);         
     }
</script>

<!-- ���⼭ ���ʹ� ���� ����Ʈ�� ���� �־��ִ� ������ �Ѵ�. -->
	<script type="text/javascript">
		$(document).ready(function(){
			$("#insertList").click(function(){
				alert("���̿�");	
			});	
			
			
			
				
			
		})
		
		
	</script>

<!-- ���⼭ ���ʹ� ������ ������ �ѷ��ִ� ������ �Ѵ�. /////////////////////////////////////////////-->
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
markers = new Array();//�������̸� �����ִ� ������ �ϰ� �� ����
count = new Array();
markers2 = new Array();//��Ŀ�� �����ִ� ������ �Ѵ�.
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
listmarkers = new Array();//�������̸� �����ִ� ������ �ϰ� �� ����
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
			       
			     "<a href='javascript:deleteMarker("+counter+")' class='remove'>����</a></div>")
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
	    // ���� �߽���ǥ�� ��Ŀ�� �����մϴ�
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
			            '            �ش����� ' + 
			            '            <div class="close" onclick="closeListOverlay()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' 

						
							
							lcontent+= '<img src='+jsonobj.firstimage1+' width="73" height="70">'+
							 '           </div>' + 
							' <div class="desc">' + 
				            '                <div class="ellipsis"><a href="https://search.naver.com/search.naver?where=nexearch&query='+jsonobj.tTitle1+'&sm=top_hty&fbm=1&ie=euckr" target="_blank">'+jsonobj.tTitle1+'</a></div>' + 
				            '                <div class="jibun ellipsis">'+jsonobj.addr11+'</div>' + 
				            '                <div class="jibun ellipsis">��ȸ��'+jsonobj.readcount1+'��ȭ��ȣ:'+jsonobj.tTel1+'</div>';
				     
				          
						
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
	///////////////////////////////////////////////////////////////////////////////	���⿡ ��Ŀ ����			
					if(serviceID!=100){
						var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // ��Ŀ�̹����� �ּ��Դϴ�    
					    imageSize = new daum.maps.Size(24, 35), // ��Ŀ�̹����� ũ���Դϴ�
					    imageOption = {offset: new daum.maps.Point(27, 69)};
						
						
						var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
						clusterer = new daum.maps.MarkerClusterer({
					        map: map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
					        averageCenter: true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
					        minLevel: 10 // Ŭ������ �� �ּ� ���� ���� 
					    });

						for(i=0; i<count1; i++){
						
							marker12 = new daum.maps.Marker({
								map : map, // ��Ŀ�� ǥ���� ����
								//position : new daum.maps.LatLng(insTag[j],insTag2[j]),
								position : new daum.maps.LatLng(mapy[i], mapx[i]), // ��Ŀ�� ǥ���� ��ġ
								//title : [insNodeID[j],insCityCode[j]],// ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
								//title : [tTitle[i],contentid[i]],
								title : contentid[i],	
								image : markerImage // ��Ŀ �̹���  
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
						            '            �ش����� ' + 
						            '            <div class="close" onclick="closeOverlay()" title="�ݱ�"></div>' + 
						            '        </div>' + 
						            '        <div class="body">' + 
						            '            <div class="img">' 

									
										
										content+= '<img src='+firstimage[i]+' width="73" height="70">'+
										 '           </div>' + 
										' <div class="desc">' + 
							            '                <div class="ellipsis"><a href="https://search.naver.com/search.naver?where=nexearch&query='+tTitle[i]+'&sm=top_hty&fbm=1&ie=euckr" target="_blank">'+tTitle[i]+'</a></div>' + 
							            '                <div class="jibun ellipsis">'+addr1[i]+'</div>' + 
							            '                <div class="jibun ellipsis">��ȸ��'+count[i]+'��ȭ��ȣ:'+tTel[i]+'</div>'+
							       	 '                <input type="button" value="����Ʈ�� �߰�" id="insertList1" class="btn btn-success" />';
							          
									
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
						
						//////////////////////���⿡ ���� �������� ���̾ƿ��� �־���
					
						/////////////////////////////////////													
						
						////////////////////////////////////
						daum.maps.event.addListener(marker12, 'click', function() {
						    overlay.setMap(map);
						});
						////////////////////////////////
						
						for(var i=0; i<markers.length; i++){
							daum.maps.event.addListener(markers[i], 'click', function(){
							
								alert("����ƮŬ��")
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
	markers = new Array();//�������̸� �����ִ� ������ �ϰ� �� ����
	count = new Array();
	markers2 = new Array();//��Ŀ�� �����ִ� ������ �Ѵ�.
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
	
			// Ŭ���� ����, �浵 ������ �����ɴϴ� 
			latlng = mouseEvent.latLng;
	
			loc1 = latlng.getLat();
			loc2 = latlng.getLng();
	
			var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
			message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
	
			var resultDiv = document.getElementById('from');
			resultDiv.innerHTML = message;

		});
		if (navigator.geolocation) {
	
			// GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
			navigator.geolocation.getCurrentPosition(function(position) {
	
				var lat = position.coords.latitude, // ����
					lon = position.coords.longitude; // �浵
	
				var locPosition = new daum.maps.LatLng(lat, lon), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
					message = '<div style="padding:5px;">�� ��ġ�� ����!</div>'; // ���������쿡 ǥ�õ� �����Դϴ�
	
				// ��Ŀ�� ���������츦 ǥ���մϴ�
				displayMarker(locPosition, message);
	
			});
	
		} else { // HTML5�� GeoLocation�� ����� �� ������ ��Ŀ ǥ�� ��ġ�� ���������� ������ �����մϴ�
	
			var locPosition = new daum.maps.LatLng(33.450701, 126.570667),
				message = 'geolocation�� ����Ҽ� �����..'
	
			displayMarker(locPosition, message);
		}
	
		// ������ ��Ŀ�� ���������츦 ǥ���ϴ� �Լ��Դϴ�
		function displayMarker(locPosition, message) {
	
			// ��Ŀ�� �����մϴ�
			var marker = new daum.maps.Marker({
				map : map,
				position : locPosition
			});
	
			var iwContent = message, // ���������쿡 ǥ���� ����
				iwRemoveable = true;
	
			// ���������츦 �����մϴ�
			var infowindow = new daum.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});
	
			// ���������츦 ��Ŀ���� ǥ���մϴ� 
			infowindow.open(map, marker);
	
			// ���� �߽���ǥ�� ������ġ�� �����մϴ�
			map.setCenter(locPosition);
		}
		var drawingFlag = false; // ���� �׷����� �ִ� ���¸� ������ ���� �����Դϴ�
		var centerPosition; // ���� �߽���ǥ �Դϴ�
		var drawingCircle; // �׷����� �ִ� ���� ǥ���� �� ��ü�Դϴ�
		var drawingLine; // �׷����� �ִ� ���� �������� ǥ���� �� ��ü�Դϴ�
		var drawingOverlay; // �׷����� �ִ� ���� �ݰ��� ǥ���� Ŀ���ҿ������� �Դϴ�
		var drawingDot; // �׷����� �ִ� ���� �߽����� ǥ���� Ŀ���ҿ������� �Դϴ�

		var circles = []; // Ŭ������ �׷��� ���� �ݰ� ������ ǥ���ϴ� ���� Ŀ���ҿ������̸� ������ ���� �迭�Դϴ�

		// ������ Ŭ�� �̺�Ʈ�� ����մϴ�
		daum.maps.event.addListener(map, 'dblclick', function(mouseEvent) {
		        
		    // Ŭ�� �̺�Ʈ�� �߻����� �� ���� �׸��� �ִ� ���°� �ƴϸ� �߽���ǥ�� Ŭ���� �������� �����մϴ�
		    if (!drawingFlag) {    
		        
		        // ���¸� �׸����ִ� ���·� �����մϴ�
		        drawingFlag = true; 
		        
		        // ���� �׷��� �߽���ǥ�� Ŭ���� ��ġ�� �����մϴ� 
		        centerPosition = mouseEvent.latLng; 

		        // �׷����� �ִ� ���� �ݰ��� ǥ���� �� ��ü�� �����մϴ�
		        if (!drawingLine) {
		            drawingLine = new daum.maps.Polyline({
		                strokeWeight: 3, // ���� �β��Դϴ�
		                strokeColor: '#00a0e9', // ���� �����Դϴ�
		                strokeOpacity: 1, // ���� �������Դϴ� 0���� 1 ���̰��̸� 0�� �������� �����մϴ�
		                strokeStyle: 'solid' // ���� ��Ÿ���Դϴ�
		            });    
		        }
		        
		        // �׷����� �ִ� ���� ǥ���� �� ��ü�� �����մϴ�
		        if (!drawingCircle) {                    
		            drawingCircle = new daum.maps.Circle({ 
		                strokeWeight: 1, // ���� �β��Դϴ�
		                strokeColor: '#00a0e9', // ���� �����Դϴ�
		                strokeOpacity: 0.1, // ���� �������Դϴ� 0���� 1 ���̰��̸� 0�� �������� �����մϴ�
		                strokeStyle: 'solid', // ���� ��Ÿ���Դϴ�
		                fillColor: '#00a0e9', // ä��� �����Դϴ�
		                fillOpacity: 0.2 // ä��� �������Դϴ� 
		            });     
		        }
		        
		        // �׷����� �ִ� ���� �ݰ� ������ ǥ���� Ŀ���ҿ������̸� �����մϴ�
		        if (!drawingOverlay) {
		            drawingOverlay = new daum.maps.CustomOverlay({
		                xAnchor: 0,
		                yAnchor: 0,
		                zIndex: 1
		            });              
		        }
		    }
		    });

		// ������ ���콺���� �̺�Ʈ�� ����մϴ�
		// ���� �׸����ִ� ���¿��� ���콺���� �̺�Ʈ�� �߻��ϸ� �׷��� ���� ��ġ�� �ݰ������� �������� �����ֵ��� �մϴ�
		daum.maps.event.addListener(map, 'mousemove', function (mouseEvent) {
		        
		    // ���콺���� �̺�Ʈ�� �߻����� �� ���� �׸����ִ� �����̸�
		    if (drawingFlag) {

		        // ���콺 Ŀ���� ���� ��ġ�� ���ɴϴ� 
		        var mousePosition = mouseEvent.latLng; 
		        
		        // �׷����� �ִ� ���� ǥ���� ��ǥ �迭�Դϴ�. Ŭ���� �߽���ǥ�� ���콺Ŀ���� ��ġ�� �����մϴ�
		        var linePath = [centerPosition, mousePosition];     
		        
		        // �׷����� �ִ� ���� ǥ���� �� ��ü�� ��ǥ �迭�� �����մϴ�
		        drawingLine.setPath(linePath);
		        
		        // ���� �������� �� ��ü�� �̿��ؼ� ���ɴϴ� 
		        var length = drawingLine.getLength();
		        
		        if(length > 0) {
		            
		            // �׷����� �ִ� ���� �߽���ǥ�� �������Դϴ�
		            var circleOptions = { 
		                center : centerPosition, 
		            radius: length,                 
		            };
		            
		            // �׷����� �ִ� ���� �ɼ��� �����մϴ�
		            drawingCircle.setOptions(circleOptions); 
		                
		            // �ݰ� ������ ǥ���� Ŀ���ҿ��������� �����Դϴ�
		            var radius = Math.round(drawingCircle.getRadius()),   
		            content = '<div class="info">�ݰ� <span class="number">' + radius + '</span>m</div>';
		            
		            // �ݰ� ������ ǥ���� Ŀ���� ���������� ��ǥ�� ���콺Ŀ�� ��ġ�� �����մϴ�
		            drawingOverlay.setPosition(mousePosition);
		            
		            // �ݰ� ������ ǥ���� Ŀ���� ���������� ǥ���� ������ �����մϴ�
		            drawingOverlay.setContent(content);
		            
		            // �׷����� �ִ� ���� ������ ǥ���մϴ�
		            drawingCircle.setMap(map); 
		            
		            // �׷����� �ִ� ���� ������ ǥ���մϴ�
		            drawingLine.setMap(map);  
		            
		            // �׷����� �ִ� ���� �ݰ����� Ŀ���� �������̸� ������ ǥ���մϴ�
		            drawingOverlay.setMap(map);
		            
		        } else { 
		            
		            drawingCircle.setMap(null);
		            drawingLine.setMap(null);    
		            drawingOverlay.setMap(null);
		            
		        }
		    }     
		});     

		// ������ ���콺 ������ Ŭ���̺�Ʈ�� ����մϴ�
		// ���� �׸����ִ� ���¿��� ���콺 ������ Ŭ�� �̺�Ʈ�� �߻��ϸ�
		// ���콺 ������ Ŭ���� ��ġ�� �������� ���� ���� �ݰ������� ǥ���ϴ� ���� Ŀ���� �������̸� ǥ���ϰ� �׸��⸦ �����մϴ�
		daum.maps.event.addListener(map, 'rightclick', function (mouseEvent) {

		    if (drawingFlag) {

		        // ���콺�� ������ Ŭ���� ��ġ�Դϴ� 
		        var rClickPosition = mouseEvent.latLng; 

		        // ���� �ݰ��� ǥ���� �� ��ü�� �����մϴ�
		        var polyline = new daum.maps.Polyline({
		            path: [centerPosition, rClickPosition], // ���� �����ϴ� ��ǥ �迭�Դϴ�. ���� �߽���ǥ�� Ŭ���� ��ġ�� �����մϴ�
		            strokeWeight: 3, // ���� �β� �Դϴ�
		            strokeColor: '#00a0e9', // ���� �����Դϴ�
		            strokeOpacity: 1, // ���� �������Դϴ� 0���� 1 ���̰��̸� 0�� �������� �����մϴ�
		            strokeStyle: 'solid' // ���� ��Ÿ���Դϴ�
		        });
		        
		        // �� ��ü�� �����մϴ�
		        var circle = new daum.maps.Circle({ 
		            center : centerPosition, // ���� �߽���ǥ�Դϴ�
		            radius: polyline.getLength(), // ���� �������Դϴ� m ���� �̸� �� ��ü�� �̿��ؼ� ���ɴϴ�
		            strokeWeight: 1, // ���� �β��Դϴ�
		            strokeColor: '#00a0e9', // ���� �����Դϴ�
		            strokeOpacity: 0.1, // ���� �������Դϴ� 0���� 1 ���̰��̸� 0�� �������� �����մϴ�
		            strokeStyle: 'solid', // ���� ��Ÿ���Դϴ�
		            fillColor: '#00a0e9', // ä��� �����Դϴ�
		            fillOpacity: 0.2  // ä��� �������Դϴ� 
		        });
		        
		        var radius = Math.round(circle.getRadius()), // ���� �ݰ� ������ ���ɴϴ�
		            content = getTimeHTML(radius); // Ŀ���� �������̿� ǥ���� �ݰ� �����Դϴ�

		        
		        // �ݰ������� ǥ���� Ŀ���� �������̸� �����մϴ�
		        var radiusOverlay = new daum.maps.CustomOverlay({
		            content: content, // ǥ���� �����Դϴ�
		            position: rClickPosition, // ǥ���� ��ġ�Դϴ�. Ŭ���� ��ġ�� �����մϴ�
		            xAnchor: 0,
		            yAnchor: 0,
		            zIndex: 1 
		        });  

		        // ���� ������ ǥ���մϴ�
		        circle.setMap(map); 
		        
		        // ���� ������ ǥ���մϴ�
		        polyline.setMap(map);
		        
		        // �ݰ� ���� Ŀ���� �������̸� ������ ǥ���մϴ�
		        radiusOverlay.setMap(map);
		        
		        // �迭�� ���� ��ü�Դϴ�. ��, ��, Ŀ���ҿ������� ��ü�� ������ �ֽ��ϴ�
		        var radiusObj = {
		            'polyline' : polyline,
		            'circle' : circle,
		            'overlay' : radiusOverlay
		        };
		        
		        // �迭�� �߰��մϴ�
		        // �� �迭�� �̿��ؼ� "��� �����" ��ư�� Ŭ������ �� ������ �׷��� ��, ��, Ŀ���ҿ������̵��� ����ϴ�
		        circles.push(radiusObj);   
		    
		        // �׸��� ���¸� �׸��� ���� �ʴ� ���·� �ٲߴϴ�
		        drawingFlag = false;
		        
		        // �߽� ��ǥ�� �ʱ�ȭ �մϴ�  
		        centerPosition = null;
		        
		        // �׷����� �ִ� ��, ��, Ŀ���ҿ������̸� �������� �����մϴ�
		        drawingCircle.setMap(null);
		        drawingLine.setMap(null);   
		        drawingOverlay.setMap(null);
		    }
		});    
		
		// ������ ǥ�õǾ� �ִ� ��� ���� �ݰ������� ǥ���ϴ� ��, Ŀ���� �������̸� �������� �����մϴ�
		function removeCircles() {         
		    for (var i = 0; i < circles.length; i++) {
		        circles[i].circle.setMap(null);    
		        circles[i].polyline.setMap(null);
		        circles[i].overlay.setMap(null);
		    }         
		    circles = [];
		}

		// ���콺 ��Ŭ�� �Ͽ� �� �׸��Ⱑ ������� �� ȣ���Ͽ� 
		// �׷��� ���� �ݰ� ������ �ݰ濡 ���� ����, ������ �ð��� ����Ͽ�
		// HTML Content�� ����� �����ϴ� �Լ��Դϴ�
		function getTimeHTML(distance) {
			radius = distance;
		    // ������ �ü��� ��� 4km/h �̰� ������ �м��� 67m/min�Դϴ�
		    var walkkTime = distance / 67 | 0;
		    var walkHour = '', walkMin = '';

		    // ����� ���� �ð��� 60�� ���� ũ�� �ð����� ǥ���մϴ�
		    if (walkkTime > 60) {
		        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>�ð� '
		    }
		    walkMin = '<span class="number">' + walkkTime % 60 + '</span>��'

		    // �������� ��� �ü��� 16km/h �̰� �̰��� �������� �������� �м��� 267m/min�Դϴ�
		    var bycicleTime = distance / 227 | 0;
		    var bycicleHour = '', bycicleMin = '';

		    // ����� ������ �ð��� 60�� ���� ũ�� �ð����� ǥ���մϴ�
		    if (bycicleTime > 60) {
		        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>�ð� '
		    }
		    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>��'

		    // �Ÿ��� ���� �ð�, ������ �ð��� ������ HTML Content�� ����� �����մϴ�
		    var content = '<ul class="info1">';
		    content += '    <li>';
		    content += '        <span class="label">�ѰŸ�</span><span class="number">' + distance + '</span>m';
		    content += '    </li>';
		    content += '    <li>';
		    content += '        <span class="label">����</span>' + walkHour + walkMin;
		    content += '    </li>';
		    content += '    <li>';
		    content += '        <span class="label">������</span>' + bycicleHour + bycicleMin;
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

	
	<!-- ��������� �����̳ʴ�. -->
	
	<div class="container">
	<div class="col-sm-12">
	
	<input type="button" value="�ֺ� ���������� ��û" id="inin" class="btn btn-success"/>
	<input type="button" value="�����/������ ����" id="select" class="btn btn-success" />
	<input type="button" value="���������� �� ã��" id="find" class="btn btn-success" />
	<input type="button" value="���ð� �� ã��" id="farfind" class="btn btn-success" />
	<input type="button" value="�ֺ� ������ ���� ��ȸ" id="tourist" class="btn btn-success" />
	<button class="btn btn-success" onclick="removeCircles()">�� �����</button>
	<button class="btn btn-success" onclick="closeMarker()">��Ŀ�����</button>
	<input type="button" value="����Ʈ�� �߰�" id="insertList" class="btn btn-success" />
	<div id="from"></div>
	<div id="test"></div>
	</div>
	
	</div>
	<div class="container">
         <div class="radio radio-info radio-inline">
         	<input type="radio" id="inlineRadio1" value="12" name="radioInline">
         	<label for="inlineRadio1"> ������ </label>
         </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio2" value="14" name="radioInline">
            <label for="inlineRadio2"> ��ȭ�ü� </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio3" value="15" name="radioInline">
            <label for="inlineRadio3">���/����/����</label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio4" value="25" name="radioInline">
            <label for="inlineRadio4"> �����ڽ� </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio5" value="28" name="radioInline">
            <label for="inlineRadio5"> ������ </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio6" value="32" name="radioInline">
            <label for="inlineRadio6"> ���� </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio7" value="38" name="radioInline">
            <label for="inlineRadio7"> ���� </label>
        </div>
         <div class="radio radio-inline">
            <input type="radio" id="inlineRadio8" value="39" name="radioInline">
            <label for="inlineRadio8"> ������ </label>
        </div>
        </div>
   

</body>
</html>