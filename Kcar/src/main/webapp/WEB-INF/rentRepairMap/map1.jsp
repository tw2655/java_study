<%@ page contentType="text/html; charset=UTF-8"%>

<head>
<title>repairMap Test</title>
<%@ include file="../rent/repairMapStyle.jsp"%>
<div class="repairMap">
	<h3 id="kcarRentC0061" class="centerTit" align="center">서울역지점</h3>
	<div id="map" style="width: 435px; height: 300px;"></div>
	<br><button id="btnSubmit" onclick="closeTabClick()">창 닫기</button>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=25b6215a33995fb8cff8835aecce271b&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 4
			};
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
	
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch('서울특별시 용산구 한강대로 372', function(result, status) {
	
					// 정상적으로 검색이 완료됐으면 
					if (status === kakao.maps.services.Status.OK) {
						var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

						// 결과값으로 받은 위치를 마커로 표시합니다
						var marker = new kakao.maps.Marker({
							map : map,
							position : coords
						});
	
						// 인포윈도우로 장소에 대한 설명을 표시합니다
						var infowindow = new kakao.maps.InfoWindow(
								{
									content : '<div style="width:150px;text-align:center;padding:6px 0;">서울역지점</div>'
								});
							infowindow.open(map, marker);
	
						// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						map.setCenter(coords);
					}
			});
			
			function closeTabClick() {
	            window.close();
	        }
			
	</script>

</div>
</body>
</html>