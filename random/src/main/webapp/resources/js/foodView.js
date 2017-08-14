function foodView(centerPosition1, distance){
	var places = new daum.maps.services.Places();
	var markers = []; //마커를 넣을 배열
	var customO = []; //커스텀 오버레이를 넣을 배열
	var listLength;
	//위의 배열들이 콜백함수 안에 있으면 불러져 올때마다 초기화가 되므로 배열에 값이 온전하게 들어가지 못한다. 그러므로 밖으로 변수를 꺼내주자.
	var callback = function(status, result, pagination){
		if(status === daum.maps.services.Status.OK){
			
			//alert(pagination.hasNextPage);
			
			var i=0;
			for(i=0; i<=result.places.length; i++){
				if(result.places.length==i){
					if(pagination.hasNextPage){
						//alert(pagination.hasNextPage);
						pagination.nextPage();
						continue;
					}else{
						break;
					}//else	
				}//if
			
				var imageSrc = "/hwan/resources/image/misesmall.png";
				var imageSize = new daum.maps.Size(22, 25);
				var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
				var marker = new daum.maps.Marker({
					map : map,
					clickable : true,
					position : new daum.maps.LatLng(result.places[i].latitude, result.places[i].longitude),
					title : result.places[i].title,
					zIndex : 1,
					image : markerImage
				});
				marker.setMap(map);
				markers.push(marker);
				//custom overlay
				var content = '<div class="foodCustomOverlay" style="padding:5px;">'+result.places[i].title+'</div>'
				var position = new daum.maps.LatLng(result.places[i].latitude, result.places[i].longitude);
				var foodCustomOverlay = new daum.maps.CustomOverlay({
					map : map,
					position : position,
					content: content,
					zIndex : 1,
					yAnchor: 1 
				});
				foodCustomOverlay.setMap(null);
				customO.push(foodCustomOverlay);
				//여기서부터 마우스 이벤트
				var foodMarkerZindex;
				var foodCustomOverlayZindex;
				daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, foodCustomOverlay));
				function makeOverListener(map, marker, foodCustomOverlay){
					return function(){
						foodMarkerZindex = marker.getZIndex();
						foodCustomOverlayZindex = foodCustomOverlay.getZIndex();
						marker.setZIndex(999);
						foodCustomOverlay.setZIndex(999);
						foodCustomOverlay.setMap(map);
					};
				}
				daum.maps.event.addListener(marker, 'mouseout', makeOutListener(map, marker, foodCustomOverlay));
				function makeOutListener(map, marker, foodCustomOverlay){
					return function(){
						marker.setZIndex(foodMarkerZindex);
						foodCustomOverlay.setZIndex(foodCustomOverlayZindex);
						foodCustomOverlay.setMap(null);
					};
				}
				//여기부터 오른쪽 리스트 관련 코드
				$("#foodList").append("<li><a href='"+result.places[i].placeUrl+"'>"+result.places[i].title+"</a></li>")
				listLength = markers.length;
			}//for
		}//if(status)
		$("#reset").on('click', function(){
			//alert($('#foodList').find('li').length);
			for(var j = 0 ; j<listLength; j++){
				markers[j].setMap(null);
				customO[j].setMap(null)
			}
			markers = [];
			customO = [];
			listLength = 0;
			$('#foodList').find('li').remove();
		});
	};//callback
	var loca = centerPosition1;
	
	places.categorySearch({
		code : 'FD6',
		callback : callback,
		location : loca,
		radius : distance,
	});
	
	
}