<%@page import="reservation.AccommoDTO"%>
<%@page import="reservation.AccommoService"%>
<%@page import="java.net.URI"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type">
<meta name="csrf-name" content="yeogi_token">

<meta name="description"
	content="서울 > 강남/역삼/삼성/논현 지역의 모텔을 예약해보세요! ㅣ 숙박 어플 이용자수 1위! 모텔, 호텔, 펜션, 캠핑, 게스트하우스 최저가 할인 예약">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<link rel="apple-touch-icon"
	href="//image.goodchoice.kr/images/web_v3/h1_logo_mo.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="//image.goodchoice.kr/images/web_v3/icon_76.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="//image.goodchoice.kr/images/web_v3/icon_120.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="//image.goodchoice.kr/images/web_v3/icon_152.png">

<meta name="apple-mobile-web-app-title"
	content="모텔 > 서울 | 여기어때">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no,address=no,email=no">

<meta property="og:type" content="website">
<meta property="og:title" content="모텔 > 서울 > 강남/역삼/삼성/논현 | 여기어때">
<meta property="og:description"
	content="서울 > 강남/역삼/삼성/논현 지역의 모텔을 예약해보세요! ㅣ 숙박 어플 이용자수 1위! 모텔, 호텔, 펜션, 캠핑, 게스트하우스 최저가 할인 예약">
<meta property="og:image"
	content="//image.goodchoice.kr/images/web_v3/h1_logo_mo_share.png">
<meta property="og:url"
	content="https://www.goodchoice.kr/product/home/7052">

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="모텔 > 서울 > 강남/역삼/삼성/논현 | 여기어때">
<meta name="twitter:description"
	content="서울 > 강남/역삼/삼성/논현 지역의 모텔을 예약해보세요! ㅣ 숙박 어플 이용자수 1위! 모텔, 호텔, 펜션, 캠핑, 게스트하우스 최저가 할인 예약">
<meta name="twitter:image"
	content="//image.goodchoice.kr/images/web_v3/h1_logo_mo_share.png">
<meta name="twitter:domain"
	content="https://www.goodchoice.kr/product/home/7052">

<meta property="al:ios:url"
	content="https://itunes.apple.com/kr/app/id884043462?mt=8">
<meta property="al:ios:app_store_id" content="884043462">
<meta property="al:ios:app_name" content="취향대로 머물다 여기어때">
<meta property="al:android:url"
	content="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere">
<meta property="al:android:app_name" content="여기어때">
<meta property="al:android:package" content="kr.goodchoice.abouthere">
<meta property="al:web:url" content="https://www.goodchoice.kr">

<meta name="naver-site-verification"
	content="27e1bd094d2f12af942addbf4afdb3f479ad0273">

<link rel="shortcut icon"
	href="//image.goodchoice.kr/images/web_v3/favicon_170822.ico"
	type="image/x-icon">

<!-- CSS -->
<title>여기어때</title>
<link rel="stylesheet" href="https://www.goodchoice.kr/css/common.css?rand=1653988749">
<link rel="stylesheet" href="https://www.goodchoice.kr/css/common.css"> 
<link rel="stylesheet" href="https://www.goodchoice.kr/common.css?rand=1653988749"> 
<link rel="canonical" href="https://www.goodchoice.kr/product/home/7052">
<link rel="stylesheet" href="https://www.goodchoice.kr/owl.carousel.css">
<link rel="stylesheet" href="https://www.goodchoice.kr/css/jquery-ui.css?rand=1653988749">
<link rel="stylesheet" href="https://www.goodchoice.kr/css/product.css?rand=1653988749">

<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" src="https://www.goodchoice.kr/js/library/jquery-1.12.4.min.js"></script>
<script>
	var _BASE_URL = 'https://www.goodchoice.kr/';
	var _MOBILE = 'W';
	var _KAKAOTALK_APP_KEY = 'f6ffb505bb11d7cc3584d443ce35f704';
	var _FACEBOOK_APP_ID = '607467975974643';
	</script>
<script>(function(a,b,c){if(c in b&&b[c]){var d,e=a.location,f=/^(a|html)$/i;a.addEventListener("click",function(a){d=a.target;while(!f.test(d.nodeName))d    =d.parentNode;"href"in d&&(d.href.indexOf("http")||~d.href.indexOf(e.host))&&(a.preventDefault(),e.href=d.href)},!1)}})(document,window.navigator,"standalone")</script>
<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<script
	src="https://www.googleadservices.com/pagead/conversion/964418007/?random=1654487871537&amp;cv=9&amp;fst=1654487871537&amp;num=1&amp;label=6YMHCM_i81wQ17PvywM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=375603261&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2Fproduct%2Fsearch%2F1%2F7052&amp;ref=https%3A%2F%2Fwww.goodchoice.kr%2Fproduct%2Fhome%2F1&amp;tiba=%EB%AA%A8%ED%85%94%20%3E%20%EC%84%9C%EC%9A%B8%20%3E%20%EA%B0%95%EB%82%A8%2F%EC%97%AD%EC%82%BC%2F%EC%82%BC%EC%84%B1%2F%EB%85%BC%ED%98%84%20%7C%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/802163829/?random=1654487871646&amp;cv=9&amp;fst=1654487871646&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa610&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2Fproduct%2Fsearch%2F1%2F7052&amp;ref=https%3A%2F%2Fwww.goodchoice.kr%2Fproduct%2Fhome%2F1&amp;tiba=%EB%AA%A8%ED%85%94%20%3E%20%EC%84%9C%EC%9A%B8%20%3E%20%EA%B0%95%EB%82%A8%2F%EC%97%AD%EC%82%BC%2F%EC%82%BC%EC%84%B1%2F%EB%85%BC%ED%98%84%20%7C%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<style>
	#layout_middle { margin-top: -400px; margin-left: 250px; }
	#poduct_list_area { min-height: 1400px; } 
	.result_empty { height: 1400px; }
</style>
</head>
<body class="mobile">

	<!-- Wrap -->
	<div class="wrap show">

		<!-- Header -->
		<%@include file="../header.jsp"%>

		<%
		request.setCharacterEncoding("utf-8");
		
		//지역 기본값
		String[] area = { "강남", "역삼", "삼성", "논현" };

		String[] tmp_area = request.getParameterValues("area");
		String[] param_area = request.getParameterValues("area[]");

		//매개변수로 전달된 지역이 있다면(area)
		if (tmp_area != null && tmp_area.length > 0){
			System.out.println("area param's value: " + Arrays.toString(tmp_area));
			area = tmp_area;
		}

		//거리순, 낮은 가격 순, 높은 가격 순 버튼 클릭 당시 설정된 지역 전달받기(area[])
		if (param_area != null && param_area.length > 0) {
			System.out.println("area[] param's value: " + Arrays.toString(param_area));
			String result_arr = null;
			for (String s : param_area) {
				result_arr = s;
			}
			result_arr = result_arr.replace("[", "").replace("]", "");
			String[] new_arr = result_arr.split(", ");
			area = new_arr;
		}
		session.setAttribute("area", area);
		System.out.println("result area: " + Arrays.toString(area));

		String url = "motel_search.jsp?";
		for (int i = 0; i < area.length; i++) {
			url += "area=" + area[i];
			if (i != area.length - 1)
				url += "&";
		}

		//현재 날짜 불러옴
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(date);

		String sel_date = today;

		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, 1);

		String sel_date2 = sdf.format(cal.getTime());

		String tmp_sel_date = request.getParameter("sel_date");
		String tmp_sel_date2 = request.getParameter("sel_date2");

		//모텔 정렬 기준(거리순, 낮은 가격순, 높은 가격순)
		String sort = request.getParameter("sort");
		pageContext.setAttribute("sort", sort);

		//대실, 숙박
		String[] reserve = request.getParameterValues("reserve[]");
		String d = null, s = null;

		System.out.println("service: " + new AccommoService());
		AccommoService service = new AccommoService();
		System.out.println("service: " + service);

		//지역에 속한 모텔 불러오기
		ArrayList<AccommoDTO> list = service.filterByArea(area, sort);
		System.out.println("숙박 0원 필터링 전: " + list.size() + "개");

		//필터링
		if (!list.isEmpty()) {
			ArrayList<AccommoDTO> tmp = null;

			if ((tmp_sel_date != null && tmp_sel_date2 != null) && (!tmp_sel_date.equals(sel_date) || !tmp_sel_date2.equals(sel_date2))) {
				tmp = list;
				sel_date = tmp_sel_date;
				sel_date2 = tmp_sel_date2;
				System.out.println("전달 받은 날짜: " + sel_date + ", " + sel_date2);
				tmp = service.filterByDate(sel_date, sel_date2, tmp);
				System.out.println("날짜 필터링 후: " + tmp.size() + "개");
			}

			//놀이시설 필터링
			String[] tmp_tmino = request.getParameterValues("tmino[]");
			if (tmp_tmino != null) {
				//중복 제거
				ArrayList<String> tmino = new ArrayList<>();
				for (String t : tmp_tmino) {
					if (!tmino.contains(t) && !t.equals("on"))
						tmino.add(t);
				}
				list = service.filterByCondi(tmino, list);
				System.out.println("상세조건 0원 필터링 후: " + list.size() + "개");
			}

			//숙박, 대여 
			if (reserve != null) {
				for (String r : reserve) {
					if (r.equals("d"))
						d = "d";
					if (r.equals("s"))
						s = "s";
				}
			}

			//가격
			String min_price = request.getParameter("min_price");
			String max_price = request.getParameter("max_price");
			int minPrice = 0, maxPrice = 0;
			if (min_price != null && min_price != "" && max_price != null && max_price != "") {
				try {
					minPrice = Integer.parseInt(min_price);
					maxPrice = Integer.parseInt(max_price);
				} catch (Exception e) {
					response.sendRedirect(url);
				}
			}

			System.out.println("정렬 기준: " + sort);
			//오늘과 내일이 아닌 다른 날짜를 매개변수로 전달 받았을 때
			if (tmp != null && !tmp.isEmpty()) {
				tmp = service.addMotelInfo(sort, tmp);
				tmp = service.filterSPriceZero(tmp);

				if (reserve != null && (d != null && s == null)) {
					tmp = service.filterDPriceZero(tmp);
					System.out.println("대실 0원 필터링 후: " + tmp.size() + "개");
				}
				if (minPrice != 0 && maxPrice != 0)
					tmp = service.filterByPrice(minPrice, maxPrice, tmp);

				if (sort == null || sort == "" || sort.equals("SCORE")) {
					list = service.sortMotelScoreDesc(tmp);
				} else if(sort.equals("LOWPRICE")) {
					list = service.sortMotelAsc(tmp);
				} else {
					list = service.sortMotelDesc(tmp);
				}
			} else { 
				list = service.addMotelInfo(sort, list);
				list = service.filterSPriceZero(list);

				if (reserve != null && (d != null && s == null)) {
					list = service.filterDPriceZero(list);
					System.out.println("대실 0원 필터링 후: " + list.size() + "개");
				}
				if (minPrice != 0 && maxPrice != 0){
					list = service.filterByPrice(minPrice, maxPrice, list);
					System.out.printf("%d만원 ~ %d만원 가격 필터링 후: %d개", minPrice, maxPrice, list.size());
				}

				if (sort == null || sort == "" || sort.equals("SCORE")) {
					list = service.sortMotelScoreDesc(list);
				} else if(sort.equals("LOWPRICE")) {
					list = service.sortMotelAsc(list);
				} else {
					list = service.sortMotelDesc(list);
				}
			}
			System.out.println("\n");
		}
		%>
		<form id="product_filter_form" method="post" action="motel_search.jsp" data-sel_date="<%=sel_date%>" data-sel_date2="<%=sel_date2%>">
			<input type="hidden" name="sort" id="sort" value="<%=sort %>">
			<input type="hidden" name="sel_date" id="sel_date" value="<%=sel_date%>">
			<input type="hidden" name="sel_date2" id="sel_date2" value="<%=sel_date2%>">
			<input type="hidden" name="area[]" value="<%=Arrays.toString((String[])session.getAttribute("area")) %>">
	
			<div class="listpage">
				<!-- Result Top -->
				<div class="fix_srch">
					<div class="srch_bar">
						<div class="wrap_inp">
							<input type="text" placeholder="지역, 숙소명">
						</div>
						<button class="btn_cancel" onclick="srch_close()">취소</button>
					</div>
				</div>
				<!-- //Result Top -->
			</div>

			<!-- Sub Top -->
			<div class="sub_top_wrap">
				<!-- 페이백일때 클래스 추가 early_top -->
				<div class="sub_top bg_kong_1">
					<h2>모텔</h2>
					<div class="area">
						<div class="btn_area">
							<span>서울</span>
							<%for(int i = 0; i < area.length; i++){ %>
								<%=area[i] %>
								<%if(i != area.length - 1){%>
									/
								<%}
							}%>
						</div>
						<div class="btn_date">
							<span class="date_view"><b><%=sel_date%> ~ <%=sel_date2%></b><em>&nbsp;·&nbsp;1박</em></span>
						</div>
					</div>
					<span class="keyword"></span>
				</div>
			</div>
			<!-- //Sub Top -->

			<!-- Datepicker -->
			<input type="text" class="product_date" style="display: none;">
			<button type="button"
				class="comiseo-daterangepicker-triggerbutton ui-button ui-corner-all ui-widget comiseo-daterangepicker-bottom comiseo-daterangepicker-vfit"
				id="drp_autogen0">
				<%=sel_date %> - <%=sel_date2 %><span class="ui-button-icon-space"> </span><span
					class="ui-button-icon ui-icon ui-icon-triangle-1-s"></span>
			</button>

			<!-- Content  -->
			<div id="content" class="sub_wrap">
				<!-- Area -->
				<div class="area_pop">
					<div class="fix_title">
						지역 선택
						<button type="button" onclick="area_close();">닫기</button>
					</div>

					<!-- 지역필터 (리조트/캠핑/한옥 클래스추가 area_etc)-->
					<div class="area_wrap ">
						<div class="iscroll_01 depth_01">
							<div class="scroller">
								<ul class="city">
									<!-- 지역 고정 클래스 fix / 오버시 on -->
									<li><a href="https://www.goodchoice.kr/product/home/1"
										class="fix on"> 서울 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/2">
											경기 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/3">
											인천 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/4">
											강원 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/51">
											제주 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/12">
											부산 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/10">
											경남 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/9">
											대구 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/8">
											경북 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/11">
											울산 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/7">
											대전 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/6">
											충남 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/5">
											충북 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/47">
											광주 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/48">
											전남 </a></li>
									<li><a href="https://www.goodchoice.kr/product/home/49">
											전북 </a></li>
								</ul>
							</div>
						</div>
						<div class="iscroll_02">
							<div class="scroller">
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/1">서울
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="motel_search.jsp?area=강남&area=역삼&area=삼성&area=논현"
										class="on">강남/역삼/삼성/논현</a></li>
									<li><a
										href="motel_search.jsp?area=서초&area=신사&area=방배">서초/신사/방배</a></li>
									<li><a
										href="motel_search.jsp?area=잠실&area=방이">잠실/방이</a></li>
									<li><a
										href="motel_search.jsp?area=잠실새내&area=신천">잠실새내/신천</a></li>
									<li><a
										href="motel_search.jsp?area=영등포&area=여의도">영등포/여의도</a></li>
									<li><a
										href="motel_search.jsp?area=구로&area=금천&area=오류&area=신도림">구로/금천/오류/신도림</a></li>
									<li><a
										href="motel_search.jsp?area=강서&area=화곡&area=까치산역&area=목동">강서/화곡/까치산역/목동</a></li>
									<li><a
										href="motel_search.jsp?area=천호&area=길동&area=둔촌">천호/길동/둔촌</a></li>
									<li><a
										href="motel_search.jsp?area=서울대&area=신림&area=사당&area=동작">서울대/신림/사당/동작</a></li>
									<li><a
										href="motel_search.jsp?area=종로&area=대학로">종로/대학로</a></li>
									<li><a
										href="motel_search.jsp?area=용산&area=중구&area=명동&area=이태원">용산/중구/명동/이태원</a></li>
									<li><a
										href="motel_search.jsp?area=성신여대&area=성북&area=월곡">성신여대/성북/월곡</a></li>
									<li><a
										href="motel_search.jsp?area=노원&area=도봉&area=창동">노원/도봉/창동</a></li>
									<li><a
										href="motel_search.jsp?area=강북&area=수유&area=미아">강북/수유/미아</a></li>
									<li><a
										href="motel_search.jsp?area=왕십리&area=성수&area=금호">왕십리/성수/금호</a></li>
									<li><a
										href="motel_search.jsp?area=건대&area=광진&area=구의">건대/광진/구의</a></li>
									<li><a
										href="motel_search.jsp?area=동대문&area=장안&area=청량리&area=답십리">동대문/장안/청량리/답십리</a></li>
									<li><a
										href="motel_search.jsp?area=중량&area=상봉&area=면목&area=태릉">중랑/상봉/면목/태릉</a></li>
									<li><a
										href="motel_search.jsp?area=신촌&area=홍대&area=서대문&area=마포">신촌/홍대/서대문/마포</a></li>
									<li><a
										href="motel_search.jsp?area=은평&area=연신내&area=불광">은평/연신내/불광</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/2">경기
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/89">수원/인계</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/160">수원시청/권선/영통</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/88">수원역/세류/팔달문/구운/장안</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/161">대부도/제부도</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/100">안성/평택/송탄</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/99">오산/화성/동탄</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7042">파주/금촌/헤이리/통일동산</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7043">김포/장기/구래/대명항</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/21">고양/일산</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/22">의정부</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/53">부천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/128">안양/평촌/인덕원/과천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/28">군포/금정/산본/의왕</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/31">안산</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7034">광명/철산/시흥신천역</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7035">시흥/월곶/정왕/오이도</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/27">용인</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/127">이천/광주/여주</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/25">성남/분당</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7036">구리/하남</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7037">남양주</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/136">가평/양평</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/162">양주/동두천/연천/장흥</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/23">포천</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/3">인천
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/90">부평</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/93">주안</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/172">구월/소래포구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/94">동암/간석</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7028">을왕리/인천공항</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7029">월미도/차이나타운/신포/동인천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/171">작전/경인교대</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/170">용현/숭의/도화/송림</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/91">송도/연수</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/119">서구/검단</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/173">강화/옹진/백령도</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/4">강원
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/150">강릉역/교동택지/옥계</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/36">경포대/사천/주문진</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/180">양양/낙산/하조대/인제</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/33">속초/설악/동명항/고성</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/32">춘천/홍천/철원/화천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/34">원주/횡성</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/37">정동진/동해/삼척</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/35">평창/영월/정선/태백</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/51">제주
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7030">제주시</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7031">애월/협재</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/87">서귀포/마라도</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/12">부산
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/101">해운대/재송</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/102">송정/기장/정관</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/103">서면/초읍/양정</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/43">남포동/부산역/송도/영도/범일동</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7044">광안리/수영/민락</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7045">경성대/대연/용호/문현</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/41">동래/온천장/부산대/구서/사직</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/104">연산/토곡</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/44">사상</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/82">강서/하단/사하/명지/신호</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/133">덕천/만덕/구포/화명/북구</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/10">경남
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/105">김해/장유/율하</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/106">양산/밀양</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/107">거제/통영/고성군</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/108">진주</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/132">사천/남해/하동</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7013">창원
											상남/용호/중앙</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7014">창원
											명서/팔용/봉곡/북면</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/109">마산/진해</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/79">거창/함안/창녕/합천/의령</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/9">대구
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7017">동성로/시청/서문시장</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7018">대구역/경북대/엑스코/칠곡3지구/태전동</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7054">동대구역/신암/신천/동촌유원지/대구공항/혁신도시</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7055">수성구/들안길/수성못/남구/대명/봉덕</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7056">두류공원/두류/본리/죽전/감삼</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7022">평리/내당/비산/원대</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7025">성서공단/계명대/달성군</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/8">경북
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/70">경주/보문단지/황리단길/불국사/안강/감포/양남</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/71">구미</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7015">포항남구/시청/시외버스터미널/구룡포/문덕/오천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7016">포항북구/영일대/죽도시장/여객터미널</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/129">울진/울릉도/청송/영덕</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/73">경산/하양/영천/청도</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/190">문경/상주/영주/예천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/72">안동</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/191">김천/성주/칠곡/의성/군위</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/11">울산
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/117">동구/북구/울주군/일산/정자/진하/영남알프스</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/116">남구/중구/삼산/성남/무거/신정</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/7">대전
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/67">유성
											봉명/도안/장대</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/68">중구
											은행/대흥/선화/유천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/66">동구
											용전/복합터미널</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/250">대덕구
											신탄진/중리</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/69">서구
											둔산/용문/월평</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/6">충남
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/65">천안
											서북구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7012">천안
											동남구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7057">계룡/금산/논산</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7058">공주/동학사</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/63">아산</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7059">태안/안면도</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7061">서산</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7060">당진</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/200">서천/부여</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/64">대천/보령</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/138">예산/청양/홍성</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/50">세종</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/5">충북
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/58">청주
											흥덕구/서원구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7011">청주
											상당구/청원구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7050">진천/음성</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7051">제천/단양</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/59">충주/수안보</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/60">증평/괴산/영동/보은/옥천</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/47">광주
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/111">북구/챔피언스필드/광주역/전남대학교</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/112">서구/유스퀘어터미널/상무지구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/220">동구/남구/국립아시아문화전당/충장로</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7046">광산구
											하남/송정역</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7047">광산구
											첨단지구</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/48">전남
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/113">여수</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7048">순천</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/7049">광양</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/114">목포/무안/영암</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/240">나주/담양/곡성/구례/영광/장성/함평</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/115">화순/보성/해남/완도/강진/고흥/진도</a></li>
								</ul>
								<ul class="city_child">
									<li><a href="https://www.goodchoice.kr/product/home/49">전북
											인기숙소<span>HOT</span>
									</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/85">전주
											덕진구</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/140">전주
											완산구/완주</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/83">군산/비응도</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/230">남원/임실/순창/무주/진안/장수</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/134">익산/익산터미널/익산역</a></li>
									<li><a
										href="https://www.goodchoice.kr/product/search/1/84">김제/부안/고창/정읍</a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>

			</div>
			<!-- //Area -->

			<section id="layout_middle">
				<!-- Filter -->
				<div class="filter_wrap">
					<div class="fix_title">
						상세조건
						<button type="button" onclick="filter_close();">닫기</button>
					</div>

					<section class="date_wrap">
						<h3>날짜</h3>
						<div class="btn_date">
							<span class="date_view"><b><%=sel_date %> ~ <%=sel_date2 %></b><em>&nbsp;·&nbsp;1박</em></span>
						</div>
					</section>

					<h3>상세조건</h3>
					<div class="btn_wrap">
						<button type="button"
							onclick="window.location.href='motel_search.jsp'">초기화</button>
						<button type="submit">적용</button>
					</div>
					<section>
						<ul>
							<li><input type="checkbox" id="reserve_0" name="reserve[]"
								class="inp_chk" value="d"><label for="reserve_0"
								class="label_chk">대실 예약</label></li>
							<li><input type="checkbox" id="reserve_1" name="reserve[]"
								class="inp_chk" value="s"><label for="reserve_1"
								class="label_chk">숙박 예약</label></li>
							<li><input type="checkbox" id="earlybird_2"
								name="earlybird[]" class="inp_chk"><label
								for="earlybird_2" class="label_chk">50%할인</label></li>
						</ul>
					</section>
					<section>
						<strong>이색테마
							<button type="button">모두 보기</button>
						</strong>
						<ul class="hide_type half">
							<li><input type="checkbox" id="tmino_0" name="tmino[]"
								class="inp_chk"><label for="tmino_0"
								class="label_chk">무인텔</label></li>
							<li><input type="checkbox" id="tmino_1" name="tmino[]"
								class="inp_chk"><label for="tmino_1"
								class="label_chk">파티룸</label></li>
							<li><input type="checkbox" id="tmino_2" name="tmino[]"
								class="inp_chk"><label for="tmino_2"
								class="label_chk">거울룸</label></li>
							<li><input type="checkbox" id="tmino_3" name="tmino[]"
								class="inp_chk"><label for="tmino_3"
								class="label_chk">복층룸</label></li>
							<li><input type="checkbox" id="tmino_4" name="tmino[]"
								class="inp_chk"><label for="tmino_4"
								class="label_chk">공주룸</label></li>
							<li><input type="checkbox" id="tmino_5" name="tmino[]"
								class="inp_chk"><label for="tmino_5"
								class="label_chk">트윈베드</label></li>
							<li><input type="checkbox" id="tmino_6" name="tmino[]"
								class="inp_chk"><label for="tmino_6"
								class="label_chk">야외테라스</label></li>
							<li><input type="checkbox" id="tmino_7" name="tmino[]"
								class="inp_chk"><label for="tmino_7"
								class="label_chk">바다뷰</label></li>
							<li><input type="checkbox" id="tmino_8" name="tmino[]"
								class="inp_chk"><label for="tmino_8"
								class="label_chk">호수뷰</label></li>
							<li><input type="checkbox" id="tmino_9" name="tmino[]"
								class="inp_chk"><label for="tmino_9"
								class="label_chk">하늘뷰</label></li>
						</ul>
					</section>
					<section>
						<strong>스파시설
							<button type="button">모두 보기</button>
						</strong>
						<ul class="hide_type half">
							<li><input type="checkbox" id="tmino_10" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_10"
								class="label_chk">스파/월풀</label></li>
							<li><input type="checkbox" id="tmino_11" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_11"
								class="label_chk">사우나/찜질방</label></li>
							<li><input type="checkbox" id="tmino_12" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_12"
								class="label_chk">맛사지 베드</label></li>
							<li><input type="checkbox" id="tmino_13" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_13"
								class="label_chk">히노끼탕</label></li>
							<li><input type="checkbox" id="tmino_14" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_14"
								class="label_chk">노천탕</label></li>
							<li><input type="checkbox" id="tmino_15" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_15"
								class="label_chk">반신욕</label></li>
							<li><input type="checkbox" id="tmino_16" name="tmino[]"
								class="inp_chk" value="1"><label for="tmino_16"
								class="label_chk">욕실 TV</label></li>
						</ul>
					</section>
					<section>
						<strong>놀이시설
							<button type="button">모두 보기</button>
						</strong>
						<ul class="hide_type half">
							<li><input type="checkbox" id="tmino_17" name="tmino[]"
								class="inp_chk" value="2"><label for="tmino_17"
								class="label_chk">수영장</label></li>
							<li><input type="checkbox" id="tmino_18" name="tmino[]"
								class="inp_chk" value="3"><label for="tmino_18"
								class="label_chk">노래방</label></li>
							<li><input type="checkbox" id="tmino_19" name="tmino[]"
								class="inp_chk" value="4"><label for="tmino_19"
								class="label_chk">당구대</label></li>
							<li><input type="checkbox" id="tmino_20" name="tmino[]"
								class="inp_chk" value="5"><label for="tmino_20"
								class="label_chk">게임기</label></li>
							<li><input type="checkbox" id="tmino_21" name="tmino[]"
								class="inp_chk" value="6"><label for="tmino_21"
								class="label_chk">안마의자</label></li>
							<li><input type="checkbox" id="tmino_22" name="tmino[]"
								class="inp_chk" value="7"><label for="tmino_22"
								class="label_chk">커플 PC</label></li>
							<li><input type="checkbox" id="tmino_23" name="tmino[]"
								class="inp_chk" value="8"><label for="tmino_23"
								class="label_chk">미니바</label></li>
							<li><input type="checkbox" id="tmino_24" name="tmino[]"
								class="inp_chk" value="9"><label for="tmino_24"
								class="label_chk">3D TV</label></li>
							<li><input type="checkbox" id="tmino_25" name="tmino[]"
								class="inp_chk" value="10"><label for="tmino_25"
								class="label_chk">빔프로젝터</label></li>
						</ul>
					</section>
					<section>
						<strong>혜택</strong>
						<button type="button" class="badge_benefit "
							data-checkbox="benefit_0">
							+ <input type="checkbox" id="benefit_0" name="benefit[]"
								class="inp_chk" value="agree">예약취소가능
						</button>
						<button type="button" class="badge_benefit "
							data-checkbox="benefit_1">
							+ <input type="checkbox" id="benefit_1" name="benefit[]"
								class="inp_chk" value="special_price">예약특가
						</button>
						<button type="button" class="badge_benefit "
							data-checkbox="benefit_2">
							+ <input type="checkbox" id="benefit_2" name="benefit[]"
								class="inp_chk" value="top1000">좋은숙박 TOP1000
						</button>
					</section>
					<section>
						<strong>가격<span><label for="amount"></label>
						<input type="text" id="amount" class="price_val" readonly="">
						<input type="hidden" id="min_price" name="min_price" value="">
						<input type="hidden" id="max_price" name="max_price" value="">
						</span></strong>
						<div class="slider_wrap">
							<div id="slider"
								class="slider_align ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
								data-min="1" data-max="30">
								<div class="ui-slider-range ui-corner-all ui-widget-header"
									style="left: 0%; width: 100%;"></div>
								<span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"
									style="left: 0%;"></span><span tabindex="0"
									class="ui-slider-handle ui-corner-all ui-state-default"
									style="left: 100%;"></span>
							</div>
							<span class="price_txt">1만원</span><span class="price_txt">30만원</span>
						</div>
					</section>
				</div>
				<!-- //Filter -->

				<!-- List -->
				<div class="list_wrap">
					<div class="top_sort">

						<!-- PC-->
						<div class="pc">
							<div class="btn_wrap width_3">
							<c:choose>
								<c:when test="${pageScope.sort == 'SCORE' || pageScope.sort == null || pageScope.sort == 'null' || pageScope.sort == '' }">
									<button type="button" data-sort="SCORE" class="on">
										<span>평점 순</span>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" data-sort="SCORE" class="">
										<span>평점 순</span>
									</button>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${pageScope.sort == 'LOWPRICE' }">
									<button type="button" data-sort="LOWPRICE" class="on">
										<span>낮은 가격 순</span>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" data-sort="LOWPRICE" class="">
										<span>낮은 가격 순</span>
									</button>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${pageScope.sort == 'HIGHPRICE' }">
									<button type="button" data-sort="HIGHPRICE" class="on">
										<span>높은 가격 순</span>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" data-sort="HIGHPRICE" class="">
										<span>높은 가격 순</span>
									</button>
								</c:otherwise>
							</c:choose>
							</div>
							<button type="button" class="btn_map" onclick="pop_map_pc();">지도</button>
						</div>
					</div>

					<div id="poduct_list_area">
						<!-- 프리미엄 -->
						<div class="title">
							<h3>프리미엄&nbsp;</h3>
							<span>광고</span>
						</div>
						<%
						if(!list.isEmpty()){
						for(AccommoDTO dto : list) {
						%>
						<li class="list_4 adcno1">
						<a href="detail.jsp?num=<%=dto.getNum() %>&sel_date=<%=sel_date %>&sel_date2=<%=sel_date2 %>"
							data-ano="63624" data-adcno="1" data-alat="37.49722015035"
							data-alng="127.02931626635" data-distance="7.635"
							data-affiliate="1">
								<p class="pic">
									<img class="lazy"
										data-original="<%=dto.getThumnail() %>"
										src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/63624/281556/1be6d279cb0dc33457eaa3fac97a788d.jpg"
										alt="<%=dto.getName() %>" style="margin-left: -172px; display: block;">
								</p>
								<div class="stage">
									<div class="name">

										<strong><%=dto.getName() %></strong>
										<p class="score">
											<span><em><%=dto.getScore() %></em></span>&nbsp;(<%=dto.getReviewCnt() %>)
										</p>
										<p><%=dto.getAddress() %></p>
										<p class="txt_opt">예약취소가능</p>
										<div class="txt_evt">
											<span><%=dto.getName() %> 이벤트룸 OPEN ~</span>
										</div>
									</div>
									<div class="price">
                              <div class="map_html">
                              <%if(reserve == null || d != null){ %>
                                 <p>
                                    <%if(dto.getdPrice() != 0){ %>
                                       대실&nbsp;
                                       <b style="color: rgba(0, 0, 0, 1);"><%=dto.getdPrice() %>원</b>
                                    <%} else {%>
                                       대실 <b>숙소에 문의</b>
                                    <%} %>
                                 </p>
                              <%} %>

                              <%if(reserve == null || s != null){ %>
                                 <p>
                                    숙박&nbsp; 
                                    <b style="color: rgba(0, 0, 0, 1);"><%=dto.getsPrice()%>원</b>
                                 </p>
                              <%} %>
                              </div>
                              
                              <%if(reserve == null || d != null){ %>
                                 <p>
                                 <%if(dto.getdPrice() != 0){ %>
                                    대실&nbsp;
                                    <b style="color: rgba(0, 0, 0, 1);"><%=dto.getdPrice() %>원</b>
                                 <%} else {%>
                                    대실 <b>숙소에 문의</b>
                                 <%} %>
                                 </p>
                              <%} %>
                              
                              <%if(reserve == null || s != null){ %>
                                 <p>
                                    숙박&nbsp; 
                                    <b style="color: rgba(0, 0, 0, 1);"><%=dto.getsPrice()%>원</b>
                                 </p>
                              <%} %>
                           </div>
								</div>
						</a></li>
						<%
						}
						}else{%>
							<div class="result_empty">
								<b>현재 조건에 맞는 숙소가 없습니다.</b> 지역을 변경하거나<br>일정, 상세조건을 재설정해 보세요.
							</div>
						<%}
						%>
					</div>
					<!-- //List -->

				</div>
			</section>
		</form>
	</div>
	<!-- //Content  -->

		<!-- #1 내 위치 재설정-->
		<div class="layer pop_relocation">
			<div class="title">
				내 위치 재설정
				<button type="button" onclick="close_layer()">닫기</button>
			</div>
			<div class="vertical_align">
				<div>
					<b>현재 위치 재검색 또는<span>지도로 위치설정이 가능합니다.</span></b>
					<p onclick="geoFindMe(true,true,false); return false;">
						<span class="bg_01">현재 위치 재검색</span>
					</p>
					<br>
					<p onclick="select_map(); return false;">
						<span class="bg_02">지도로 위치 설정</span>
					</p>
				</div>
			</div>
		</div>

		<!-- #2 지도 -->
		<div class="layer pop_map">
			<button class="pc_btn_close" type="button" onclick="close_layer()">닫기</button>
			<div class="title">
				<span>위치설정</span>
				<button type="button" onclick="close_layer()">닫기</button>
			</div>
			<div class="address">${'장소' }</div>
			<div class="inner_map" id="map">
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ae17142425721dddddcb11cb4cd3474b&libraries=services"></script>
				<script src="${root }/js/service/kakao.map.api.js"></script>
			</div>
			<div class="btn_set">
				<button class="gra_left_right_red">설정 완료</button>
			</div>
		</div>

		<!-- #3 거리순/추천순 팝업 -->
		<div class="layer pop_sort box_shadow">
			<ul>
				<li><button type="button" data-sort="DISTANCE" class="active">거리
						순</button></li>
				<li><button type="button" data-sort="LOWPRICE" class="">낮은
						가격 순</button></li>
				<li><button type="button" data-sort="HIGHPRICE" class="">높은
						가격 순</button></li>
			</ul>
			<button type="button" onclick="close_layer();">취소</button>
		</div>

		<!-- #4 지도 - 모바일 숙소 소개 -->
		<div class="layer pop_m_room" style="display: none;">
			<ul class="owl-carousel"></ul>
		</div>

	</div>

	<!-- Footer -->
	<%@include file="../footer.jsp" %>

	<!-- 상단으로 -->
	<button class="btn_go_top" onclick="moveTop();" style="display: none;">상단으로</button>

	<!-- //Wrap -->

	<!-- Script -->
	<!-- Library -->
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/jquery.cookie.js"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/library/jquery.lazyload.js?rand=1653988749"></script>
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/iscroll.js"></script>

	<!-- Service -->
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/service/common.js?rand=1653988749"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/service/geolocation.js?rand=1653988749"></script>

	<!-- Module -->
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/modules/dialogPopup.js?rand=1653988749"></script>

	<!-- Page Script -->
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/library/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/library/jquery.comiseo.daterangepicker.min.js"></script>
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/swiper.min.js"></script>
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/owl.carousel.min.js"></script>
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/moment.js"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/service/datepick.js?rand=1653988749"></script>
	<script type="text/javascript" src="https://www.goodchoice.kr/js/library/vue.min.js"></script>
	<!-- 내 코드 -->

	<script charset="UTF-8"
		src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/service/product.js?rand=1653988749"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/service/product.search.js?rand=1653988749"></script>
	<script type="text/javascript"
		src="https://www.goodchoice.kr/js/service/product.list.js?rand=1653988749"></script>
	<%-- <script type="text/javascript"
		src="${root }/js/service/kakao.map.api.js"></script> --%>

	<!-- Body Spinner -->
	<div class="spinner show" style="display: none;">
		<span></span>
	</div>

	<div style="display: none;">
		<!-- 네이버 프리미엄 로그 분석(https://yeogirnd.atlassian.net/browse/SD-320)-->
		<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>

		<script>

		const appsflyer = (function() {

			// 마케팅서비스
			const marketingServices = {
				yeogi: { number: 1, code: 'ye', },
				activity: { number: 2, code: 'ac', },
				daumDA: { number: 3, code: 'du', },
				channelingCPC: { number: 4, code: 'ns', },
				yeogiWebCPS: { number: 5,  code: 'yp', },
			}

			// 대그룹
			const largeGroups = {
				channelingEvent: { number: 56, code: 'ce', },
				kakaoShopping: { number: 49, code: 'ke', },
				mangoPlate: { number: 44, code: 'mp', },
				naverShopping: { number: 17,  code: 'ne', },
				quizMedia: { number: 58, code: 'qu', },
				testGroup: { number: 45, code: 'te', },
				tmap: { number: 32, code: 'tm', },
				triple: { number: 33, code: 'tr', },
			}

			const adSet = {
				top : 'top',
				bottom: 'bottom',
			}

			const targetUrls = {
				baseURL: 'https://goodchoice.onelink.me/C4wC/',
				species: {
					channeling: {
						top: {
							pathVariable: '2a0cfe91',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore) {
								return marketingServiceNumber === marketingServices.channelingCPC.number &&
										containsMarketingCodeAndLargeCode(
											[largeGroups.channelingEvent, largeGroups.mangoPlate, largeGroups.tmap, largeGroups.triple],
											marketingCodesTrailingUnderscore,
											marketingServices.channelingCPC.code
										)
							},
						}
					},
					kakaoShopping: {
						top: {
							pathVariable: '873b4fab',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore) {
								return marketingServiceNumber === marketingServices.channelingCPC.number &&
										containsMarketingCodeAndLargeCode(
											[largeGroups.kakaoShopping],
											marketingCodesTrailingUnderscore,
											marketingServices.channelingCPC.code
										)
							}
						},
					},
					naverShopping: {
						top: {
							pathVariable: '79261d0c',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore) {
								return marketingServiceNumber === marketingServices.channelingCPC.number &&
										containsMarketingCodeAndLargeCode(
											[largeGroups.naverShopping],
											marketingCodesTrailingUnderscore,
											marketingServices.channelingCPC.code
										)
							}
						},
					},
					etc: {
						top: {
							pathVariable: 'dcc68a19',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) {
								return !isBottomPopup;
							}
						},
						bottom: {
							pathVariable: '307f137',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) {
								return isBottomPopup;
							}
						}
					},
				}
			}

			function getTopOrBottomKey(isBottomPopup) {
				return isBottomPopup ? adSet.bottom : adSet.top;
			}

			function getMatchedInfo(species, marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) {
				return Object.keys(species)
						.map(function(species) { return targetUrls.species[species][getTopOrBottomKey(isBottomPopup)]; })
						.filter(function(type) { return !!type })
						.filter(function(type) { return type.match(marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) })[0];
			}

			function containsMarketingCodeAndLargeCode(largeGroups, marketingCodesTrailingUnderscore, marketingServiceCode,) {
				return largeGroups.some(function(largeGroup) {
					return marketingCodesTrailingUnderscore.indexOf(marketingServiceCode + '_' + largeGroup.code + '_') != -1;
				})
			}

			return {
				marketingServices: marketingServices,
				largeGroups: largeGroups,
				targetUrls: targetUrls,
				getTopOrBottomKey: getTopOrBottomKey,
				getMatchedInfo: getMatchedInfo,
			}
		})();

		/**
		 * 앱스플라이어 마케팅 url
		 */
		function goAppStore(dialogCheck) {
			const isBottomPopup = !!dialogCheck;
			const kcode = getCookie('k_code');
			const kcodeSplit = kcode.split('^'); // 2.0: mkt_code^msid^device_type , 1.0: mkt_code only
			const marketingCodesTrailingUnderscore = kcodeSplit[0]; // ex: ns_ce_... ns(마케팅 서비스 code)_ce(대그룹 code)
			const marketingServiceNumber = Number(kcodeSplit[1]); // 마케팅 서비스 number

			location.href = appsflyer.targetUrls.baseURL +
						appsflyer.getMatchedInfo(
							appsflyer.targetUrls.species,
							marketingServiceNumber,
							marketingCodesTrailingUnderscore,
							isBottomPopup
						).pathVariable;
		}

		// 쿠키 생성
		function setCookie(cName, cValue, cDay){
			var expire = new Date();
			expire.setDate(expire.getDate() + cDay);
			cookies = cName + '=' + escape(cValue) + '; path=/ ';
			if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
			document.cookie = cookies;
		}

		// 쿠키 가져오기
		function getCookie(cName) {
			cName = cName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cName);
			var cValue = '';
			if(start != -1){
				start += cName.length;
				var end = cookieData.indexOf(';', start);
				if(end == -1)end = cookieData.length;
				cValue = cookieData.substring(start, end);
			}
			return unescape(cValue);
		}

		if (getCookie('marketing_type') != '') {
			if (getCookie('marketing_type') == 'pay') {
				var _nasa={};
				_nasa["cnv"] = wcs.cnv("1",getCookie('marketing_price')); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
			} else {
				var _nasa={};
				_nasa["cnv"] = wcs.cnv("2","1"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
			}

			//쿠키 삭제
			setCookie('marketing_price', '', -1);
			setCookie('marketing_type', '', -1);
		}
	</script>
		<script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-77719807-2', 'auto');
        ga('send', 'pageview');
    </script>

		<!-- Daum  중요 용도가 아니라면 주석처리 여부 결정 문제 없을시 삭제
    <script type="text/javascript">
        var roosevelt_params = {
            retargeting_id:'iaYgM3OBV.Uv.QOMJv.bqg00',
            tag_label:'BTecd8srQJ2G5hhOmZIanw'
        };
    </script>
    <script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script -->

		<!-- Google Code for &#50668;&#44592;&#50612;&#46412;_&#50937; Conversion Page -->
		<script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 964418007;
        var google_conversion_language = "en";
        var google_conversion_format = "3";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "6YMHCM_i81wQ17PvywM";
        var google_remarketing_only = false;
        /* ]]> */
    </script>
		<script type="text/javascript"
			src="//www.googleadservices.com/pagead/conversion.js"></script>

		<noscript>
			<div style="display: inline;">
				<img height="1" width="1" style="border-style: none;" alt=""
					src="//www.googleadservices.com/pagead/conversion/964418007/?label=6YMHCM_i81wQ17PvywM&amp;guid=ON&amp;script=0" />
			</div>
		</noscript>

		<script type="text/javascript">
		if (!wcs_add) var wcs_add={};
		wcs_add["wa"] = "s_4540c185467c";
		if (!_nasa) var _nasa={};
		wcs.inflow("goodchoice.kr");
		wcs_do(_nasa);
	</script>

		<!-- Global site tag (gtag.js) - Google AdWords: 802163829 -->
		<script async=""
			src="https://www.googletagmanager.com/gtag/js?id=AW-802163829"></script>
		<script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'AW-802163829');

        // Event snippet for WEB_다운로드_버튼 conversion page In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button.
        
        $(function(){
            $('.appdown_link').on('click',function(){
                gtag('event', 'conversion', {
                    'send_to': 'AW-802163829/jxc6CN22x4MBEPWYwP4C'
                });
            });
        });
	</script>

		<!-- 채널제출 -->
		<span itemscope="" itemtype="http://schema.org/Organization">
			<link itemprop="url" href="https://www.goodchoice.kr"> <a
			itemprop="sameAs" href="https://www.facebook.com/goodchoiceofficial"></a>
			<a itemprop="sameAs"
			href="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere"></a>
			<a itemprop="sameAs"
			href="https://itunes.apple.com/kr/app/id884043462"></a> <a
			itemprop="sameAs" href="https://post.naver.com/withinnovation"></a> <a
			itemprop="sameAs"
			href="https://www.youtube.com/channel/UCLI1HOVJdhWdVl9pT__g2Zw"></a>
		</span>
	</div>


	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
	<div class="ui-front comiseo-daterangepicker-mask"
		style="display: none;"></div>
	<div
		class="comiseo-daterangepicker comiseo-daterangepicker-right ui-widget ui-widget-content ui-corner-all ui-front"
		style="display: none; left: 50px; top: 359px;">
		<div class="comiseo-daterangepicker-main ui-widget-content">
			<div class="comiseo-daterangepicker-presets">
				<ul id="ui-id-1" role="menu" tabindex="0"
					class="ui-menu ui-widget ui-widget-content">
					<li class="ui-menu-item"><div id="ui-id-2" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Today</div></li>
					<li class="ui-menu-item"><div id="ui-id-3" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Yesterday</div></li>
					<li class="ui-menu-item"><div id="ui-id-4" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Last 7 Days</div></li>
					<li class="ui-menu-item"><div id="ui-id-5" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Last Week
							(Mo-Su)</div></li>
					<li class="ui-menu-item"><div id="ui-id-6" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Month to Date</div></li>
					<li class="ui-menu-item"><div id="ui-id-7" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Previous Month</div></li>
					<li class="ui-menu-item"><div id="ui-id-8" tabindex="-1"
							role="menuitem" class="ui-menu-item-wrapper">Year to Date</div></li>
				</ul>
			</div>
			<div
				class="comiseo-daterangepicker-calendar ui-widget-content hasDatepicker"
				id="dp1654487871522">
				<div
					class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
					style="display: block;">
					<div
						class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
						<a class="ui-datepicker-prev ui-corner-all ui-state-disabled"
							title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a
							class="ui-datepicker-next ui-corner-all" data-handler="next"
							data-event="click" title="Next"><span
							class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
						<div class="ui-datepicker-title">
							&nbsp;<span class="ui-datepicker-year">2022년&nbsp;</span><span
								class="ui-datepicker-month">6월</span>
						</div>
					</div>
					<table class="ui-datepicker-calendar">
						<thead>
							<tr>
								<th scope="col" class="ui-datepicker-week-end"><span
									title="일">일</span></th>
								<th scope="col"><span title="월">월</span></th>
								<th scope="col"><span title="화">화</span></th>
								<th scope="col"><span title="수">수</span></th>
								<th scope="col"><span title="목">목</span></th>
								<th scope="col"><span title="금">금</span></th>
								<th scope="col" class="ui-datepicker-week-end"><span
									title="토">토</span></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td
									class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
								<td class=" ui-datepicker-unselectable ui-state-disabled  "><span
									class="ui-state-default">1</span></td>
								<td class=" ui-datepicker-unselectable ui-state-disabled  "><span
									class="ui-state-default">2</span></td>
								<td class=" ui-datepicker-unselectable ui-state-disabled  "><span
									class="ui-state-default">3</span></td>
								<td
									class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled  "><span
									class="ui-state-default">4</span></td>
							</tr>
							<tr>
								<td
									class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled  "><span
									class="ui-state-default">5</span></td>
								<td
									class=" ui-datepicker-days-cell-over ui-state-highlight  ui-datepicker-current-day ui-datepicker-today"
									data-handler="selectDay" data-event="click" data-month="5"
									data-year="2022"><a
									class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
									href="#">6</a></td>
								<td class=" ui-state-highlight " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">7</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">8</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">9</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">10</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">11</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">12</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">13</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">14</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">15</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">16</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">17</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">18</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">19</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">20</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">21</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">22</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">23</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">24</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">25</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">26</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">27</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">28</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">29</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">30</a></td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
								<td
									class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="ui-helper-clearfix">
			<div class="comiseo-daterangepicker-buttonpanel">
				<button type="button"
					class="ui-priority-primary ui-button ui-corner-all ui-widget">선택
					완료</button>
				<button type="button"
					class="ui-priority-secondary ui-button ui-corner-all ui-widget">Clear</button>
				<button type="button"
					class="ui-priority-secondary ui-button ui-corner-all ui-widget">Cancel</button>
			</div>
		</div>
	</div>
</body>
</html>