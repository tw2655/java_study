<%@page import="reservation.ReviewDTO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="reservation.RoomDTO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="reservation.DetailDTO"%>
<%@page import="reservation.MotelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<%
SimpleDateFormat getFormat = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat setFormat = new SimpleDateFormat("MM.dd");
SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");

DecimalFormat decFormat = new DecimalFormat("###,###");

request.setCharacterEncoding("utf-8");
String num = request.getParameter("num");
String originSelDate = request.getParameter("sel_date");
String originSelDate2 = request.getParameter("sel_date2");

Date date1 = getFormat.parse(originSelDate);
Date date2 = getFormat.parse(originSelDate2);

long diff = (date2.getTime() - date1.getTime()) / (24 * 60 * 60 * 1000);
String selDate = setFormat.format(date1);
String selDate2 = setFormat.format(date2);

MotelDAO motelDao = new MotelDAO();
DetailDTO detail = motelDao.selectMotel(num);
System.out.println(detail.getRooms());

System.out.println("reviews: " + detail.getReviews());
float avgReview = 0;
if (detail.getReviews().size() > 0) {
	avgReview = (float) detail.getSumReview() / detail.getReviews().size();
}

// 대실 시간 체크
Date now = new Date();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=detail.getName()%> | 여기어때</title>

<link rel="shortcut icon"
	href="//image.goodchoice.kr/images/web_v3/favicon_170822.ico"
	type="image/x-icon">

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/common.css">
<link rel="stylesheet" href="${root }/css/owl.carousel.css">
<link rel="stylesheet" href="${root }/css/swiper.css">
<link rel="stylesheet" href="${root }/css/theme_icon.css">
<link rel="stylesheet" href="${root }/css/jquery-ui.css">
<link rel="stylesheet" href="${root }/css/product.css">
<link rel="stylesheet" href="${root }/css/main.css">
<!-- JS -->
<script type="text/javascript"
	src="${root }/js/library/jquery-1.12.4.min.js"></script>
<!-- <link rel="canonical" href="https://www.goodchoice.kr/product/detail?ano=2954"> -->
<!-- map -->
<!-- 
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6ffb505bb11d7cc3584d443ce35f704"></script>
    <script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"></script>
     -->
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>

</head>
<body class="pc">

	<!-- Wrap -->
	<div class="wrap show">

		<%@ include file="../header.jsp"%>
		<!-- Content  -->
		<div id="content" class="detail  motel_room">
			<!-- 비제휴점 inert_room 클래스 추가 -->

			<!-- Top -->
			<div class="top">
				<!-- Left -->
				<div class="left">

					<!-- Gallery (Mobile) -->
					<div class="gallery_m index_mobile">
						<div
							class="swiper-container swiper-default swiper-container-horizontal">
							<img src="<%=detail.getDetailImage()%>">
						</div>
					</div>

					<!-- Gallery (PC) -->
					<div class="gallery_pc">
						<!-- Image Size : 490 x 348 -->

						<!-- Swiper -->
						<div
							class="swiper-container gallery-top swiper-container-horizontal swiper-container-fade">
							<img src="<%=detail.getDetailImage()%>">
						</div>
						<!-- Add Arrows -->

					</div>
				</div>
				<!-- //Left -->

				<!-- Datepicker -->
				<input type="text" class="product_date" style="display: none;">
				<button type="button"
					class="comiseo-daterangepicker-triggerbutton ui-button ui-corner-all ui-widget comiseo-daterangepicker-bottom comiseo-daterangepicker-vfit"
					id="drp_autogen0">
					<%=selDate%>
					-
					<%=selDate2%><span class="ui-button-icon-space"> </span><span
						class="ui-button-icon ui-icon ui-icon-triangle-1-s"></span>
				</button>

				<!-- Right -->
				<div class="right">

					<!-- Info -->
					<div class="info">
						<p class="badge"></p>
						<h2><%=detail.getName()%></h2>
						<div class="score_cnt">
							<span><%=avgReview%></span>
							<% if (avgReview > 9.5) {%>
							최고에요
							<%} else if (9.0 <= avgReview && avgReview <= 9.5) {%>
							추천해요
							<%} else {%>
							만족해요
							<%}%>

							<b id="review_cnt">&nbsp;리뷰 <em><%=detail.getReviews().size()%></em>개
							</b>
							<p>
								<a href="#" class="call">전화하기</a>
							</p>
						</div>
						<p class="address"><%=detail.getAddress()%></p>
					</div>

					<div id="promotion-banner"></div>

				</div>
			</div>
			<!-- //Right -->
			<!-- //Top -->

			<!-- Tab Menu -->
			<div class="tab">
				<button class="on">
					<span>객실안내/예약</span>
				</button>
				<button onclick="init_map('37.49999098', '127.031855');">
					<span>숙소정보</span>
				</button>
				<button class="tab_review">
					<span>리뷰</span>
				</button>
			</div>

			<form id="product_filter_form" method="get" action="#"
				data-sel_date="<%=originSelDate%>"
				data-sel_date2="<%=originSelDate2%>">
				<!-- 날짜 선택 -->
				<input id="num" type="hidden" name="num"
					value="<%=detail.getAccommNum()%>"> <input id="sel_date"
					type="hidden" name="sel_date" value="<%=originSelDate%>">
				<input id="sel_date2" type="hidden" name="sel_date2"
					value="<%=originSelDate2%>">

				<!-- 객실안내/예약 -->
				<article class="room_info on">
					<!-- 날짜 선택 -->
					<div class="btn_date">
						<span class="date_view"><b><%=selDate%> ~ <%=selDate2%></b><em>&nbsp;·&nbsp;<%=diff%></em></span><strong>변경</strong>
					</div>

					<!-- 방정보 -->
					<%
					for (RoomDTO room : detail.getRooms()) {
						// 1. 대실 끝시간 체크
						
						int end;
						try {
							end = Integer.parseInt(room.getEndTime().substring(0, 2));
							
						} catch (Exception e) {
							end = 0;
						}
						
						Date endTime = timeFormat.parse(originSelDate + " " + Integer.toString(end) + ":00");
						
// 						System.out.println("end: " + originSelDate + " " + Integer.toString(end) + ":00");
// 						System.out.println("now: " + now + ", endTime" + endTime);
					%>
					<div class="room">
						<!-- 282 x 169 -->
						<p class="pic_view ">
							<img class="lazy" data-original="<%=room.getImage()%>"
								src="<%=room.getImage()%>"
								alt="<%=detail.getName()%> | <%=room.getName()%>">
						</p>
						<div class="cal_bg visible">
							<button type="button">닫기</button>
						</div>
						<strong class="title"><%=room.getName()%></strong>
						<!-- swipe image -->
						<div class="pic_wrap">
							<img class="lazy" style="width: 100%;"
								data-original="<%=room.getImage()%>"
								src="<%=room.getImage()%>"
								alt="<%=detail.getName()%> | <%=room.getName()%>">
						</div>
						<!-- //swipe image -->
						<!-- room info -->
						<div class="info">
							<%-- 숙소가격이 0일때는 문의, 아니면 대실예약가능 --%>
							<%-- 현재시간이 대실 마감시간을 넘었을때에도 숙박에 문의 --%>
							<%
							if (room.getdPrice() == 0 || end == 0 || now.after(endTime) ) {
							%>
							<div class="half none">
								<div class="price">
									<strong>대실</strong>
									<div>
										<p>숙소에 문의</p>
									</div>
									<ul>
										<li><span>마감시간</span><%=room.getEndTime()%>&nbsp;</li>
										<li><span>이용시간</span><%=room.getUseTime()%>&nbsp;</li>
									</ul>
								</div>
								<button type="button" class="" style="">숙소에 문의 하세요</button>
							</div>
							<%
							} else {
							%>
							<div class="half">
								<div class="price">
									<strong>대실</strong>
									<div>
										<!-- 표시금액 -->
										<p>
											<span>예약</span><b style="color: rgba(0, 0, 0, 1)"><%=decFormat.format(room.getdPrice())%>원</b>
										</p>
									</div>
									<ul>
										<li><span>마감시간</span><%=room.getEndTime()%>&nbsp;</li>
										<li><span>이용시간</span><%=room.getUseTime()%>&nbsp;</li>
									</ul>
								</div>
								<div class="reserve1_info mypageForm__form-inputs-wrap"
									aria-hidden="true" style="display: none;">
									<input type="text" name="price" aria-hidden="true"
										style="display: none;" value="<%=room.getdPrice()%>">
									<input type="text" name="accomNum" aria-hidden="true"
										style="display: none;" value="<%=room.getAccommNum()%>">
									<input type="text" name="accomName" aria-hidden="true"
										style="display: none;" value="<%=detail.getName()%>">
									<input type="text" name="roomNum" aria-hidden="true"
										style="display: none;" value="<%=room.getrNum()%>"> <input
										type="text" name="roomName" aria-hidden="true"
										style="display: none;" value="<%=room.getName()%>"> <input
										type="text" name="selDate" aria-hidden="true"
										style="display: none;" value="<%=originSelDate%>"> <input
										type="text" name="endTime" aria-hidden="true"
										style="display: none;" value="<%=room.getEndTime()%>">
									<input type="text" name="useTime" aria-hidden="true"
										style="display: none;" value="<%=room.getUseTime()%>">
								</div>
								<button onclick="reserve1(this);" type="button"
									class="gra_left_right_red" style="">대실 예약</button>
							</div>
							<%
							}
							%>

							<%-- 숙소가격이 0일때는 문의, 아니면 대실예약가능 --%>
							<%
							if (room.getsPrice() == 0) {
							%>
							<div class="half none">
								<div class="price">
									<strong>숙박</strong>
									<div>
										<p class="through_none"
											style="text-decoration: inherit; visibility: hidden;"></p>
										<p>숙소에 문의</p>
									</div>
									<ul>
										<li><span>입실시간</span><%=room.getCheckIn()%>&nbsp;</li>
										<li><span>퇴실시간</span><%=room.getCheckOut()%>&nbsp;</li>
									</ul>
								</div>
								<button type="button" class="" style="">숙소에 문의 하세요</button>
							</div>
							<%
							} else {
							%>
							<div class="half">
								<div class="price">
									<strong>숙박</strong>
									<div>
										<!-- 표시금액 -->
										<p>
											<span>예약</span><b style="color: rgba(0, 0, 0, 1)"><%=decFormat.format(room.getsPrice())%>원</b>
										</p>
									</div>
									<ul>
										<li><span>입실시간</span><%=room.getCheckIn()%>&nbsp;</li>
										<li><span>퇴실시간</span><%=room.getCheckOut()%>&nbsp;</li>
									</ul>
								</div>
								<div class="reserve2_info mypageForm__form-inputs-wrap"
									aria-hidden="true" style="display: none;">
									<input type="text" name="price" aria-hidden="true"
										style="display: none;" value="<%=room.getdPrice()%>">
									<input type="text" name="accomNum" aria-hidden="true"
										style="display: none;" value="<%=room.getAccommNum()%>">
									<input type="text" name="accomName" aria-hidden="true"
										style="display: none;" value="<%=detail.getName()%>">
									<input type="text" name="roomNum" aria-hidden="true"
										style="display: none;" value="<%=room.getrNum()%>"> <input
										type="text" name="roomName" aria-hidden="true"
										style="display: none;" value="<%=room.getName()%>"> <input
										type="text" name="selDate" aria-hidden="true"
										style="display: none;" value="<%=originSelDate%>"> <input
										type="text" name="selDate2" aria-hidden="true"
										style="display: none;" value="<%=originSelDate2%>"> <input
										type="text" name="checkin" aria-hidden="true"
										style="display: none;" value="<%=room.getCheckIn()%>">
									<input type="text" name="checkout" aria-hidden="true"
										style="display: none;" value="<%=room.getCheckOut()%>">
								</div>
								<button onclick="reserve2(this);" type="button"
									class="gra_left_right_red" style="">숙박 예약</button>
							</div>
							<%
							}
							%>
						</div>
						<!-- //room info -->
					</div>
					<%
					}
					%>
				</article>
			</form>

			<%@ include file="detailBaseInfo.jsp"%>
			<!-- 리뷰 -->
			<article id="review" class="review">
				<div class="score_top">
					<strong>만족해요</strong>
					<div class="score_wrap">
						<% // 평점 리뷰 style
							int star = (int) Math.floor((avgReview * 10) / 2);
							star -= star % 5;
						%>
						<div class="score_star star_<%=star %>"></div>
						<div class="num"><%=avgReview%></div>
					</div>
					<p>
						전체 리뷰 <b><%=detail.getReviews().size() %></b>
					</p>
				</div>
				<ul>
					<% for (ReviewDTO review: detail.getReviews()){ 
							star = (int) Math.floor((review.getScore() * 10) / 2);	
							star -= star%5;
					%>
					<li>
						<div class="guest">
							<p class="pic">
								<img src="//image.goodchoice.kr/profile/ico/ico_22.png"
									alt="<%=review.getUserNickname() %>">
							</p>
							<strong><%=review.getTitle() %></strong>
							<div class="score_wrap_sm">
								<div class="score_star star_<%=star %>"></div>
								<div class="num"><%=review.getScore() %></div>
							</div>
							<div class="name">
								<b><%=review.getRoomName() %> · </b><%=review.getUserNickname() %>
							</div>
							<%-- get_score_star() --%>
							<div class="txt"><%=review.getContent() %></div>
							<%--get_date_diff() --%>
							<span class="date"><%=review.getCreateDate() %></span>
						</div>
					</li>
					<%} %>
					</ul>
<!-- 					<div id="pagination"> -->
<!-- 						<div class="paging"> -->
<!-- 							<button class="on">1</button> -->
<!-- 							<button>2</button> -->
<!-- 							<button>3</button> -->
<!-- 							<button>4</button> -->
<!-- 							<button>5</button> -->
<!-- 							<button class="next">다음</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
			</article>
			<!-- //리뷰 -->

		</div>
		<!-- //Content  -->



		<%@ include file="../footer.jsp"%>

	</div>

	<!-- 상단으로 -->
	<button class="btn_go_top" onclick="moveTop();">상단으로</button>
	<!-- //Wrap -->

	<%@ include file="../script.jsp"%>

	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
	<div class="ui-front comiseo-daterangepicker-mask"
		style="display: none;"></div>
	<div
		class="comiseo-daterangepicker comiseo-daterangepicker-right ui-widget ui-widget-content ui-corner-all ui-front"
		style="display: none; left: 693.4px; top: 359px;">
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
				id="dp1654224411720">
				<div
					class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
					style="display: block;">
					<div
						class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
						<a class="ui-datepicker-prev ui-corner-all ui-state-disabled"
							title="Prev"> <span class="ui-icon ui-icon-circle-triangle-w">Prev</span>
						</a> <a class="ui-datepicker-next ui-corner-all" data-handler="next"
							data-event="click" title="Next"> <span
							class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
						<div class="ui-datepicker-title">
							&nbsp; <span class="ui-datepicker-year">2022년&nbsp;</span> <span
								class="ui-datepicker-month">6월</span>
						</div>
					</div>
					<table class="ui-datepicker-calendar">
						<thead>
							<tr>
								<th scope="col" class="ui-datepicker-week-end"
									style="width: 14.2857%;"><span title="일">일</span></th>
								<th scope="col" style="width: 14.2857%;"><span title="월">월</span></th>
								<th scope="col" style="width: 14.2857%;"><span title="화">화</span></th>
								<th scope="col" style="width: 14.2857%;"><span title="수">수</span></th>
								<th scope="col" style="width: 14.2857%;"><span title="목">목</span></th>
								<th scope="col" style="width: 14.2857%;"><span title="금">금</span></th>
								<th scope="col" class="ui-datepicker-week-end"
									style="width: 14.2857%;"><span title="토">토</span></th>
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
								<td
									class=" ui-datepicker-days-cell-over ui-state-highlight  ui-datepicker-current-day ui-datepicker-today"
									data-handler="selectDay" data-event="click" data-month="5"
									data-year="2022"><a
									class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
									href="#">3</a></td>
								<td class=" ui-datepicker-week-end ui-state-highlight "
									data-handler="selectDay" data-event="click" data-month="5"
									data-year="2022"><a class="ui-state-default" href="#">4</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">5</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
									class="ui-state-default" href="#">6</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="5" data-year="2022"><a
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
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"> </iframe>
</body>
<script>
	function reserve1(obj) {
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post"); //Post 방식
		form.setAttribute("action", "roomReservation1.jsp"); //요청 보낼 주소

		var inputs = obj.previousElementSibling.children;
		console.log(inputs);
		for (var i = 0; i < inputs.length; i++) {
			var hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", inputs[i].name);
			hiddenField.setAttribute("value", inputs[i].value);
			form.appendChild(hiddenField);
		}
		document.body.appendChild(form);
		form.submit();
	}

	function reserve2(obj) {

		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post"); //Post 방식
		form.setAttribute("action", "roomReservation2.jsp"); //요청 보낼 주소

		var inputs = obj.previousElementSibling.children;
		console.log(inputs);
		for (var i = 0; i < inputs.length; i++) {
			var hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", inputs[i].name);
			hiddenField.setAttribute("value", inputs[i].value);
			form.appendChild(hiddenField);
		}
		document.body.appendChild(form);
		form.submit();
	}
</script>
</html>