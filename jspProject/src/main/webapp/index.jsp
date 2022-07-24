<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="root" value="/" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="전국 호텔, 펜션, 모텔부터 워터파크, 놀이공원, 아쿠아리움까지 최저가 할인 예약">
    <meta name="format-detection" content="telephone=no,address=no,email=no">
    <link rel="shortcut icon" href="//image.goodchoice.kr/images/web_v3/favicon_170822.ico" type="image/x-icon">

	<!-- CSS -->
    <title>취향대로 머물다 여기어때</title>
    <link rel="stylesheet" href="https://www.goodchoice.kr/css/common.css?rand=1653988749">
    <link rel="canonical" href="https://www.goodchoice.kr/">
    <link rel="stylesheet" href="css/swiper.css">
	<link rel="stylesheet" href="css/main.css">
    <script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="js/library/jquery-1.12.4.min.js"></script>
    
	<script>
	var _BASE_URL = 'https://www.goodchoice.kr/';
	var _MOBILE = 'W';
	var _KAKAOTALK_APP_KEY = 'f6ffb505bb11d7cc3584d443ce35f704';
	var _FACEBOOK_APP_ID = '607467975974643';
	</script>
	<script>(
			function(a,b,c){
				if(c in b&&b[c]){
					var d,e=a.location,f=/^(a|html)$/i;
					a.addEventListener("click",function(a){
						d=a.target;
						while(!f.test(d.nodeName))d    =d.parentNode;
						"href"in d&&(d.href.indexOf("http")||~d.href.indexOf(e.host))&&(a.preventDefault(),e.href=d.href)
						},!1)
						}
				}
			)(document,window.navigator,"standalone")
	</script>
	<meta http-equiv="origin-trial" content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://www.googleadservices.com/pagead/conversion/964418007/?random=1654176401763&amp;cv=9&amp;fst=1654176401763&amp;num=1&amp;label=6YMHCM_i81wQ17PvywM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=375603260&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=1&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%B7%A8%ED%96%A5%EB%8C%80%EB%A1%9C%20%EB%A8%B8%EB%AC%BC%EB%8B%A4%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/802163829/?random=1654176402128&amp;cv=9&amp;fst=1654176402128&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=1&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa610&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%B7%A8%ED%96%A5%EB%8C%80%EB%A1%9C%20%EB%A8%B8%EB%AC%BC%EB%8B%A4%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
</head>
<body class="pc">
<!-- Wrap -->
<div class="wrap main_wrap show">
    <%@ include file="header.jsp" %>
    <!-- 추천검색어 -->
    <div class="recommend_srch">
        <div class="scroll_srch">
            <div class="scroller">
                <div class="default" style="display:block">
                    <strong>추천 검색어</strong>
                    <ul></ul>
                </div>
                <!-- 연관검색어 -->
                <div class="chain" style="display: none;">
                    <ul></ul>
                </div>
            </div>
        </div>
    </div>
	<!-- Content  -->

	<div id="content">
		<div class="main_spot">취향대로 머물다 여기어때</div>
		<div class="main_link">
			<ul>
				<li><a href="${root }/reservation/motel_search.jsp" menu-link="1"><span class="ico_01">&nbsp;</span><p>모텔</p></a></li>
				<li><a href="#" menu-link="2"><span class="ico_02">&nbsp;</span><p>호텔·리조트</p></a></li>
				<li><a href="#" menu-link="3"><span class="ico_03">&nbsp;</span><p>펜션</p></a></li>
				<li><a href="#" menu-link="6"><span class="ico_04">&nbsp;</span><p>게스트하우스</p></a></li>
				<li><a href="#" menu-link="5"><span class="ico_05">&nbsp;</span><p>캠핑·글램핑</p></a></li>
				<li><a href="#" menu-link="7"><span class="ico_06">&nbsp;</span><p>한옥</p></a></li>
				<li><a href="#"><span class="ico_07">&nbsp;</span><p>내주변</p></a></li>
				<li><a href="#"><span class="ico_08">&nbsp;</span><p>페이백</p></a></li>
			</ul>
		</div>

		<!-- Recommend -->
		<div class="recommend">
			<h2>여기어때 소식</h2>
			<ul>
				
				<li><a href="https://www.goodchoice.kr/b2b/intro" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/b2b_banner.png" alt="여기어때 비즈니스"><strong>여기어때 비즈니스</strong>출장부터 복지까지<br>여기어때 비즈니스로 스마트하게</a></li>
				<!-- <li><a href="https://www.goodchoice.kr/product/recommend/82"><img src="//image.goodchoice.kr/images/web_v3/re_1.png" alt="스타&컬리넌" /><strong>스타&컬리넌</strong>최고와 최고가 만났습니다<br/>모던한 감성과 스타일리쉬한 호텔</a></li> -->
				<li><a href="https://www.goodchoice.kr/font" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/re_jalnan.png" alt="여기어때 잘난체"><strong>여기어때 서체 출시</strong>젊고 당당한 여기어때 잘난체<br>지금 다운로드 받으세요!</a></li>
			</ul>
			<!-- li><a href="https://www.goodchoice.kr/product/recommend/153"><img src="//image.goodchoice.kr/images/web_v3/re_3.png" alt="" /><strong>반려동물 동반가능 숙소</strong>혼자두지마세요. 이제 함께 떠나요</a></li>
			<li><a href="#none" ><img src="//image.goodchoice.kr/images/web_v3/re_4.png" class="img_ready " alt="" /><strong>컨텐츠 준비중</strong>빠른시일내에 준비하겠습니다.<br/>이용에 불편을 드려 죄송합니다.</a></li -->
		</div>
		<!-- //Recommend -->

		<!-- App Down -->
		<div class="appdown">
			<p>앱 다운 받고 <b>더 많은 혜택</b> 받으세요</p>
			<div>
				<a href="//play.google.com/store/apps/details?id=kr.goodchoice.abouthere" class="down_and" target="_blank" title="구글플레이 새창"><img src="//image.goodchoice.kr/images/web_v3/banner_and.png" alt="GET IT ON Google Play"></a>
				<a href="//itunes.apple.com/kr/app/yeogieottae-1deung-sugbag/id884043462?mt=8&amp;ign-mpt=uo%3D2" class="down_ios" target="_blank" title="앱스토어 새창"><img src="//image.goodchoice.kr/images/web_v3/banner_ios.png" alt="Download on the App Store"></a>
				<!--
				<button onclick="pop_layer_w('pop_downlink');" class="gra_left_right_red">앱 다운로드 링크보내기</button>
				-->
			</div>
		</div>
		<!-- //App Down -->

		<!-- EVENT -->
		<div class="event_main">
			<h2>이벤트</h2>
			<section class="swiper-container swiper-container-horizontal">
				<ul class="swiper-wrapper" style="transform: translate3d(-1280px, 0px, 0px); transition-duration: 0ms;"><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="6" style="width: 320px;"><a href="/more/eventView/608?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/3c13f7bf4ea5ef67729fa285aca7896f.jpg" alt="페이백 50﹪ 쿠폰 이벤트"></a></li>
					<li class="swiper-slide" data-swiper-slide-index="0" style="width: 320px;"><a href="/more/eventView/2311?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/7ab7caeaaf84f083a817b1a753dd5a98.png" alt="놀이공원 할인대전"></a></li><li class="swiper-slide" data-swiper-slide-index="1" style="width: 320px;"><a href="/more/eventView/2327?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/fbaabc9a7da7a4f20e1b43c44da60b34.jpg" alt="올여름 100만원 쿠폰어때"></a></li><li class="swiper-slide swiper-slide-prev" data-swiper-slide-index="2" style="width: 320px;"><a href="/more/eventView/2325?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/3688f0b2c68bfc6378cf8f3d617fd99b.jpg" alt="올 여름 연박도 여기어때"></a></li><li class="swiper-slide swiper-slide-active" data-swiper-slide-index="3" style="width: 320px;"><a href="/more/eventView/2335?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/67223336700c3b16456fe8279cac2bcc.png" alt="총 2천만원 경품 싹-다 드림!"></a></li><li class="swiper-slide swiper-slide-next" data-swiper-slide-index="4" style="width: 320px;"><a href="/more/eventView/2313?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/2a2a2b5abd30e342833c3dfd92ad0e9d.jpg" alt="야구장 주변 추천숙소 할인"></a></li><li class="swiper-slide" data-swiper-slide-index="5" style="width: 320px;"><a href="/more/eventView/2306?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/e81e0449dd5111ad332a05c09ab71c36.png" alt="한국관광 품질인증숙소 할인기획전"></a></li><li class="swiper-slide" data-swiper-slide-index="6" style="width: 320px;"><a href="/more/eventView/608?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/3c13f7bf4ea5ef67729fa285aca7896f.jpg" alt="페이백 50﹪ 쿠폰 이벤트"></a></li>				<li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="0" style="width: 320px;"><a href="/more/eventView/2311?page=0"><img src="//image.goodchoice.kr/images/cms/home_img/7ab7caeaaf84f083a817b1a753dd5a98.png" alt="놀이공원 할인대전"></a></li></ul>
				<!-- Add Pagination -->
				<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
			</section>
		</div>
		<!-- //EVENT -->

		<!-- Ad -->
		<div class="ad_ask">
			<!-- Mobile -->
			<ul class="mobile">
				<li>
					<a href="#" onclick="alert('신규 업체 가입 문의는 고객센터 (1544-4087) 로 연락해주세요'); return false;" target="_blank">
						<img src="//image.goodchoice.kr/images/web_v3/ad_mo_01_171013.png" alt="여기어때 광고 신청하기">
					</a>
				</li>
				<li><a href="//guest.goodchoice.kr/auth" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/ad_mo_02_171013.png" alt="게스트 하우스 숙소 등록하기"></a></li>
			</ul>
			<!-- Pc -->
			<ul class="pc">
				<li>
					<a href="#" onclick="alert('신규 업체 가입 문의는 고객센터 (1544-4087) 로 연락해주세요'); return false;" target="_blank">
						<img src="//image.goodchoice.kr/images/web_v3/ad_01_171013.png" alt="여기어때 광고 신청하기">
					</a>
				</li>
				<li><a href="//guest.goodchoice.kr/auth" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/ad_02_171013.png" alt="게스트 하우스 숙소 등록하기"></a></li>
			</ul>
		</div>
		<!-- //Ad -->

	</div>
<%@ include file="footer.jsp" %>
</div>

<!-- 상단으로 -->
<button class="btn_go_top" onclick="moveTop();" style="display: none;">상단으로</button>

<!-- //Wrap -->
<%-- script --%>
<%@ include file="script.jsp" %>


</body></html>