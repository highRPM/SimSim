/**
 * 
 */

function pm10mise(jsonObj, mise){
	local = new Array("busan","chungbuk","chungnam","daegu","daejeon","gangwon","gwangju",
			"gyeongbuk","gyeongnam","incheon","jeju","jeonbuk","jeonnam","sejong","seoul");

	//alert(local.length);
	var job = jsonObj.list[0];
	var positions = new Array();
	
	var gpsXY = Array();
	//미세먼지 측정 지역별 좌표 값
	gpsXY.push(new daum.maps.LatLng(35.160721, 129.040550));
	gpsXY.push(new daum.maps.LatLng(36.842892, 127.877850));
	gpsXY.push(new daum.maps.LatLng(36.501845, 126.538278));
	gpsXY.push(new daum.maps.LatLng(35.839601, 128.570812));
	gpsXY.push(new daum.maps.LatLng(36.319341, 127.399591));
	gpsXY.push(new daum.maps.LatLng(37.761390, 128.741780));
	gpsXY.push(new daum.maps.LatLng(35.165955, 126.838299));
	gpsXY.push(new daum.maps.LatLng(36.475123, 128.815153));
	gpsXY.push(new daum.maps.LatLng(35.319048, 128.242250));
	gpsXY.push(new daum.maps.LatLng(37.463922, 126.697689));
	gpsXY.push(new daum.maps.LatLng(33.393882, 126.557890));
	gpsXY.push(new daum.maps.LatLng(35.815982, 127.097584));
	gpsXY.push(new daum.maps.LatLng(34.846727, 126.868446));
	gpsXY.push(new daum.maps.LatLng(36.508602, 127.248339));
	gpsXY.push(new daum.maps.LatLng(37.541906, 126.973042));
	for(key in job){
		for(var i=0; i<local.length; i++){
			if(key == local[i]){
				//alert(key+job[key]);
				var positionJson = Object();
				positionJson.title = key;
				positionJson.latlng = gpsXY[i];
				positionJson.mise = job[key];
				positions.push(positionJson);
			}
		}		
	}	
	
	var imageSrc = "/hwan/resources/image/misesmall.png"; 
	
	for (var j = 0; j < positions.length; j ++) {
		//alert(positions[j].title+"/////"+positions[j].latlng)
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(45, 50); 
	    var iwContent = '<div id="infoWindow'+j+'" style="padding:5px;">'+positions[j].mise+'</div>',
	    	iwPosition = positions[j].latlng,
	    	iwRemoveable = true;

	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	   var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[j].latlng, // 마커를 표시할 위치
	        title : positions[j].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage, // 마커 이미지 
	        zIndex : 1
	    });
	   marker.setMap(map);
	   // 아래부터는 커스텀 오버레이 설정.
	   var infoWindow = new daum.maps.CustomOverlay({
		   position : iwPosition,
		   content : iwContent,
		   position: positions[j].latlng,
		   zIndex : 1
	   });
	   infoWindow.setMap(map);
	   //----------------------------------------------
	   //마커와 인포 윈도우의 zIndex설정
	   //클로져 함수를 통해서 포문으로 생성된 값들의 주소를 기억하고 있는다.
	   var markerZIndex;
	   var infoWindowZIndex;
	   daum.maps.event.addListener(marker,'mouseover',makeOverListener(map, marker, infoWindow));
	   function makeOverListener(map, marker, infoWindow){
		   return function(){
			   markerZIndex = marker.getZIndex();
			   infoWindowZIndex = infoWindow.getZIndex();
			   marker.setZIndex(999);
			   infoWindow.setZIndex(999);
		   };
	   }
	   	 
	   daum.maps.event.addListener(marker,'mouseout',makeOutListener(map, marker, infoWindow));
	   function makeOutListener(map, marker, infoWindow){
		   return function(){
			   marker.setZIndex(markerZIndex);
			   infoWindow.setZIndex(infoWindowZIndex);
		   };
	   }
	   if(mise == "PM25"){
		   
		   if(positions[j].mise >= 101){
		    	$('#infoWindow'+j).css({
		    		'background-color' : 'red',
		    		'color' : "white"
		    	});
		    }else if(positions[j].mise >= 51){
		    	$('#infoWindow'+j).css({
		    		'background-color' : 'yellow',
		    		'color' : "black"
		    	});
		    }else if(positions[j].mise >= 16){
		    	$('#infoWindow'+j).css({
		    		'background-color' : 'green',
		    		'color' : "white"
		    	});
		    }else if(positions[j].mise >= 0){
		    	$('#infoWindow'+j).css({
		    		'background-color' : '#00FFFF',
		    		'color' : "black"
		    	});	    
		    }
	   }else if(mise == "PM10"){
		
		   if(positions[j].mise >= 151){
		    	$('#infoWindow'+j).css({
		    		'background-color' : 'red',
		    		'color' : "white"
		    	});
		    }else if(positions[j].mise >= 81){
		    	$('#infoWindow'+j).css({
		    		'background-color' : 'yellow',
		    		'color' : "black"
		    	});
		    }else if(positions[j].mise >= 31){
		    	$('#infoWindow'+j).css({
		    		'background-color' : 'green',
		    		'color' : "white"
		    	});
		    }else if(positions[j].mise >= 0){
		    	$('#infoWindow'+j).css({
		    		'background-color' : '#00FFFF',
		    		'color' : "black"
		    	});	    
		    }
	   }//미세먼지 유형별 조건 분기문 끝   
	}//for문 끝
}
