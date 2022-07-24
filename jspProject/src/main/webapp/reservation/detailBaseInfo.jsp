<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<!-- 숙소정보 -->
<article class="detail_info">
	<!-- 기본 정보 -->
	<button type="button" id="default_info_tab" class="category on"><span>기본 정보</span></button>
	<section class="default_info" style="display: block;">
		<h3>혜택안내</h3>
		<ul>
			<li>요금할인</li>
		</ul>

		<h3>주차장 정보</h3>
		<ul>
			<li></li>
			<li>Free Parking (객실당 1대 무료주차) ㅡ 지상주차 (20대이상 가능)</li>
			<li>추가 차량 주차요금 추가되십니다.(1객실당 1대 무료)</li>
			<li>추가주차시 주차요금발생(문의는 호텔로 부탁드립니다)</li>
			<li>총 1대 주차시설 보유</li>
		</ul>

		<h3>지하철 정보</h3>
			<ul>
				<li>2호선 역삼역</li>
				<li>2호선 강남역</li>
			</ul>

		<h3>주변 정보</h3>
			<ul>
				<li></li>
				<li></li>
				<li>강남역 &amp; 역삼역 도보 5분 거리</li>
			</ul>

		<h3>객실내부 시설</h3>
		<ul>
			<li></li>
			<li>팬트하우스648 이벤트룸 이용안내</li>
			<li>#코로나로인하여 펜트하우스A,펜트하우스B,펜트하우스648 객실은 인원이 변동될수 있습니다</li>
			<li><br></li>
			<li>이용금액 : 15만원(기본시간 3시간 / 시간연장은 1시간당 50,000원 선불결제후 연장가능/후불결제 불가)</li>
			<li>입실인원 : 기준인원3명(4명까지 가능)</li>
			<li><br></li>
			<li><br></li>
			<li>기본규정</li>
			<li>#코로나로인하여 펜트하우스A,펜트하우스B,펜트하우스648 객실은 인원이 변동될수 있습니다</li>
			<li><br></li>
			<li>주말기준은 금,토요일 / 공휴일,특정일의 전날로 사정상 변경될 수 있습니다</li>
			<li>호텔의 사정에 따라 세부조건은 변경될 수 있습니다</li>
			<li>팬트하우스648/ 4인기준 초과시 호텔에 문의</li>
			<li>팬트하우스A /펜트하우스B 4인기준/혼숙불가,혼숙으로 입실거부될시 취소불가합니다.</li>
			<li>펜트하우스객실 4인기준 초과로 입실거부될시 취소불가합니다.</li>
			<li>애완견 동반 입실 불가. 동반입실시 퇴실조치 될수 있습니다. (퇴실조치시 환불불가)</li>
			<li>자세한 사항은 호텔로 문의 부탁드립니다</li>
			<li>시간이 경과되면 시간추가요금이 발생합니다(1시간당:15,000원 현금결제)</li>
			<li>호텔 객실 내부사진은 어플에서 보여지는 것과 조금 다를수 있습니다</li>
			<li>이해부탁드립니다</li>
			<li><br></li>
			<li><br></li>
			<li>펜트하우스648/펜트하우스B/펜트하우스A</li>
			<li>#코로나로인하여 펜트하우스A,펜트하우스B,펜트하우스648 객실은 인원이 변동될수 있습니다</li>
			<li><br></li>
			<li>(평일) 일~목, (주말) 금~토 기준</li>
			<li>펜트하우스648</li>
			<li>1~4인 기본3시간 15만원(평일) 18만원(주말)</li>
			<li>펜트하우스A/펜트하우스B</li>
			<li>1~4인 기본 3시간 7만원(평일) 11만원(주말)</li>
			<li>자세한 문의는 호텔로 전화 부탁드립니다</li>
			<li>코로나로인하여 인원은 단계별로 변동될수 있습니다</li>
			<li>*호텔 객실 내부사진은  어플에서 보여지는 것과 조금 다를수 있습니다</li>
			<li>이해부탁드립니다</li>
			<li><br></li>
			<li>#코로나로인하여 펜트하우스A,펜트하우스B,펜트하우스648 객실은 인원이 변동될수 있습니다</li>
		</ul>

		<h3>프런트 및 그 외 시설</h3>
		<ul>
			<li></li>
			<li>#코로나로인하여 펜트하우스A,펜트하우스B,펜트하우스648 객실은 인원이 변동될수 있습니다</li>
			<li><br></li>
			<li> 문의 사항이나 이용사항은 프론트에 문의 바랍니다</li>
			<li>프론트는 24시간 이용가능합니다</li>
			<li>3인이상 혼숙불가하며 3인이상 혼숙으로 입실 거부될 시 취소 불가합니다.</li>
			<li><br></li>
			<li>#코로나로인하여 펜트하우스A,펜트하우스B,펜트하우스648 객실은 인원이 변동될수 있습니다</li>
		</ul>
		<div class="map" id="detail_kakao_map" stlye="width:100%; height: 160px;">
		
		</div>		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=512a8a42d9c7729fc5822863ba18e896"></script>
		<script>
			var container = document.getElementById('detail_kakao_map');
			var options = {
				center: new kakao.maps.LatLng(37.537183, 128.005454),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
		</script>

	</section>

        
	<!-- 요금 정보 -->
	<button type="button" class="category"><span>요금 정보</span></button>
	<section class="table_wrap" style="display: none;">
		<div class="price_top">
			<div>
				<span class="guest_01">비회원</span>
				<span class="guest_02">회원</span>
				<span class="guest_03">특별</span>
			</div>
		</div>

		<div class="normal_day">
			<h3>대실 이용요금</h3>
			<table class="table_type_02">
				<tbody>
					<tr>
						<th style="width: 35%;">객실 등급</th>
						<th>일, 월, 화, 수, 목, 금, 토</th>
					</tr>
					<tr>
						<td>클래식 더블(2인 기준)</td>
						<td><span>40,000</span><span class="font_red">30,000</span></td>
					</tr>
					<tr>
						<td>파크 디럭스(2인 기준)</td>
						<td><span>40,000</span><span class="font_red">30,000</span></td>
					</tr>
					<tr>
						<td>스파 디럭스(2인 기준)</td>
						<td><span>45,000</span><span class="font_red">35,000</span></td>
					</tr>
					<tr>
						<td>펜트하우스 (4인까지가능-혼숙불가)</td>
						<td><span>65,000</span><span class="font_red">50,000</span></td>
					</tr>
					<tr>
						<td>스파 더블 디럭스(2인 기준)</td>
						<td><span>55,000</span><span class="font_red">40,000</span></td>
					</tr>
					<tr>
						<td>펜트하우스648(4인까지가능)</td>
						<td><span>120,000</span><span class="font_red">100,000</span></td>
					</tr>
				</tbody>
			</table>
			
			<h3>대실 이용시간</h3>
			<table class="table_type_02">
				<tbody>
					<tr>
						<th style="width: 33.3333%;">구분</th>
						<th style="width: 33.3333%;">월, 화, 수, 목</th>
						<th style="width: 33.3333%;">일, 금, 토</th>
					</tr>
					<tr>
						<td>이용시간</td>
						<td><span>3시간 </span><span class="font_red">4시간 </span></td>
						<td><span>3시간 </span><span class="font_red">4시간 </span></td>
					</tr>
					<tr>
						<td>마감시간</td>
						<td><span>오후 8시 </span></td>
						<td><span>오후 8시 </span></td>
					</tr>
				</tbody>
			</table>
		</div>
	
		<div class="normal_day">
			<h3>숙박 이용요금</h3>
			<table class="table_type_02">
			<tbody>
				<tr>
					<th style="width: 16.6667%;">객실 등급</th>
					<th style="width: 16.6667%;">월, 화</th>
					<th style="width: 16.6667%;">금</th>
					<th style="width: 16.6667%;">일</th>
					<th style="width: 16.6667%;">수, 목</th>
					<th style="width: 16.6667%;">토</th>
				</tr>
				<tr>
					<td>클래식 더블(2인 기준)</td>
					<td><span>85,000</span><span class="font_red">78,000</span></td>
					<td><span>100,000</span><span class="font_red">90,000</span></td>
					<td><span>85,000</span><span class="font_red">78,000</span></td>
					<td><span>85,000</span><span class="font_red">78,000</span></td>
					<td><span>110,000</span></td>
				</tr>
				<tr>
					<td>파크 디럭스(2인 기준)</td>
					<td><span>85,000</span><span class="font_red">78,000</span></td>
					<td><span>100,000</span><span class="font_red">90,000</span></td>
					<td><span>85,000</span><span class="font_red">78,000</span></td>
					<td><span>85,000</span><span class="font_red">78,000</span></td>
					<td><span>100,000</span></td>
				</tr>
				<tr>
					<td>스파 디럭스(2인 기준)</td>
					<td><span>95,000</span><span class="font_red">90,000</span></td>
					<td><span>110,000</span><span class="font_red">100,000</span></td>
					<td><span>95,000</span><span class="font_red">90,000</span></td>
					<td><span>95,000</span><span class="font_red">90,000</span></td>
					<td><span>120,000</span></td>
				</tr>
				<tr>
					<td>펜트하우스 (4인까지가능-혼숙불가)</td>
					<td><span>150,000</span><span class="font_red">135,000</span></td>
					<td><span>200,000</span><span class="font_red">180,000</span></td>
					<td><span>150,000</span><span class="font_red">135,000</span></td>
					<td><span>150,000</span><span class="font_red">135,000</span></td>
					<td><span>150,000</span></td>
				</tr>
				<tr>
					<td>스파 더블 디럭스(2인 기준)</td>
					<td><span>130,000</span><span class="font_red">110,000</span></td>
					<td><span>150,000</span><span class="font_red">140,000</span></td>
					<td><span>130,000</span><span class="font_red">110,000</span></td>
					<td><span>130,000</span><span class="font_red">110,000</span></td>
					<td><span>150,000</span><span class="font_red">140,000</span></td>
				</tr>
				<tr>
					<td>펜트하우스648(4인까지가능)</td>
					<td><span>300,000</span><span class="font_red">280,000</span></td>
					<td><span>350,000</span><span class="font_red">320,000</span></td>
					<td><span>300,000</span><span class="font_red">280,000</span></td>
					<td><span>300,000</span><span class="font_red">280,000</span></td>
					<td><span>350,000</span></td>
				</tr>
			</tbody>
			</table>
			
			<h3>숙박 이용시간</h3>
			<table class="table_type_02">
				<tbody>
					<tr>
						<th style="width: 33.3333%;">구분</th>
						<th style="width: 33.3333%;">일, 월, 화, 수, 목</th>
						<th style="width: 33.3333%;">금, 토</th>
					</tr>
					<tr>
						<td>입실</td>
						<td><span>19시 </span><span class="font_red">18시 </span></td>
						<td><span>19시 </span><span class="font_red">18시 </span></td>
					</tr>
					<tr>
						<td>퇴실</td>
						<td><span>정오 </span><span class="font_red">정오 </span></td>
						<td><span>정오 </span><span class="font_red">정오 </span></td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>

	<!-- 테마 -->
	<button type="button" class="category theme_category"><span>테마</span></button>
  

</article>
<!-- //숙소정보 -->