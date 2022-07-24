<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="reservation.MyReserveDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="reservation.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type">
	<!-- <meta name="csrf-name" content="<?php echo $csrf_name; ?>" /> -->
	<meta name="description" content="전국 호텔, 펜션, 모텔부터 워터파크, 놀이공원, 아쿠아리움까지 최저가 할인 예약">
	
	<link rel="preload" href="${root }/css/common.css" as="style">
	<link rel="stylesheet" href="${root }/css/common.css">
	<link rel="stylesheet" href="${root }/css/my.css">
	<link rel="shortcut icon" href="https://image.goodchoice.kr/images/web_v3/favicon_170822.ico" type="image/x-icon">
	
	<!-- CSS -->
	<title>취향대로 머물다 여기어때</title>
	<script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
	<script type="text/javascript" src="${root }/js/library/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="${root }/js/library/jquery.cookie.js"></script>
	<!-- vuejs 스타일 시트 써야하는데 너무 긺 - 이 코드 없으면 mobile에서 다시예약버튼이 이상하게 보임 -->
	<%--
	<style data-vue-ssr-id="7e56e4e3:0 a4416d6a:0 34c88125:0 6dddd935:0 879b8502:0 edcdab14:0 62376f3c:0 e11ef8c8:0 b13ffd10:0" > 부분
	 --%>
</head>
<%
	String email = (String) session.getAttribute("email");
	if (email.isEmpty()){
		out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='login.jsp'</script>");
	}
// 	String email = "test@naver.com";
	SimpleDateFormat getFormat = new SimpleDateFormat("yyyy.MM.dd");
	SimpleDateFormat setFormat = new SimpleDateFormat("MM.dd E");
	ReservationDAO reserveDao = new ReservationDAO();
	ArrayList<MyReserveDTO> reservations = reserveDao.selectAllReservation(email);
	
	System.out.println(reservations);
	
	// 다시 예약 날짜
	SimpleDateFormat setFormat2 = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	cal.setTime(new Date());
	cal.add(Calendar.DATE, 1);
	String sel_date = setFormat2.format(new Date());
	String sel_date2 = setFormat2.format(cal.getTime()); 
	
%>


<body class="mobile">
	<script>var deviceWidth=window.innerWidth;document.body.className=deviceWidth>1023?"pc":"mobile"</script>
	<div class="wrap show" >
	    <%@ include file="../header.jsp" %>
	    
		<!-- Sub Top -->
		<div class="sub_top_wrap"  >
			<div class="sub_top bg_kong_2"  >
				<h2>내정보</h2>
			</div>
		</div>
		<!-- //Sub Top -->
		<!-- Content -->
		<div id="content" class="sub_wrap my_wrap" >
			<!-- nav bar -->
			<p class="sub_title" >예약 내역</p>
			<nav>
				<ul>
					<li><a class="" href="myPoint.jsp">포인트</a></li>
					<li><a href="myPoint.jsp" aria-current="page" class="nuxt-link-exact-active nuxt-link-active active">예약 내역</a></li>
					<li><a class="" href="myPage.jsp">내 정보 관리</a></li>
				</ul>
			</nav>
			<!-- algin-rt -->
			<div class="align_rt" >
				<div class="reserve_list" >
					<section >
						<h3 data-v-50bfe504="">예약 내역</h3>
						<ul class="list_wrap" ></ul>
					</section>
					<section class="list_cancel" style="padding-top: 0">
						<ul class="list_wrap" >
							<% for (MyReserveDTO reservation: reservations){ 
								Date checkin = getFormat.parse(reservation.getCheckIn().substring(0, 10));
								Date checkout = getFormat.parse(reservation.getCheckOut().substring(0, 10));
								long diff = (checkout.getTime() - checkin.getTime()) / (24*60*60*1000);
// 								System.out.println("checkin: " + checkin + ", checkout: " + checkout + ", diff: " + diff);
								%>
								
							<li class="reservation-detail" >
								<!-- 폼전송시 전달되는 data target element -->
								<form class="reserve-form" action="reservationDetail.jsp?num=<%=reservation.getNum() %>" method="post">
									<div class="mypageForm__form-inputs-wrap" aria-hidden="true" style="display:none;">
										<input type="text" name="num" aria-hidden="true" style="display:none;" value="<%=reservation.getNum() %>">
										<input type="text" name="checkin" aria-hidden="true" style="display:none;" value="<%=reservation.getCheckIn() %>">
										<input type="text" name="checkout" aria-hidden="true" style="display:none;"value="<%=reservation.getCheckOut() %>">
										<input type="text" name="isReserve" aria-hidden="true" style="display:none;"value="<%=reservation.getIsReserve() %>">
										<input type="text" name="price" aria-hidden="true" style="display:none;"value="<%=reservation.getPrice() %>">
										<input type="text" name="userName" aria-hidden="true" style="display:none;"value="<%=reservation.getUserName() %>">
										<input type="text" name="userPhone" aria-hidden="true" style="display:none;"value="<%=reservation.getUserPhone() %>">
										<input type="text" name="accomName" aria-hidden="true" style="display:none;"value="<%=reservation.getAccomName() %>">
										<input type="text" name="accomThumnail" aria-hidden="true" style="display:none;"value="<%=reservation.getAccomThumnail() %>">
										<input type="text" name="roomName" aria-hidden="true" style="display:none;"value="<%=reservation.getRoomName() %>">
										<input type="text" name="reviewNum" aria-hidden="true" style="display:none;"value="<%=reservation.getReviewNum() %>">
									</div>
								</form>
								
								<button type="button" data-dono="88579763" data-target-list="usedList" class="btn_del" onclick="modal(this)">삭제</button>
								<p class="pic" >
									<img loading="lazy" src="<%=reservation.getAccomThumnail() %>" alt="<%=reservation.getAccomName() %>" class="align" >
								</p>
								<a href="#" class="product-title" onclick="sendInfo(this);">
									<% if (reservation.getIsReserve() == 1) { %>
										<i class="bg_w" >이용완료</i>
									<% } else { %>
										<i class="bg_w" >이용 전</i>
									<% } %>
									
									<strong ><%=reservation.getAccomName() %></strong>
									<span class="reservation-date">
										<%=setFormat.format(checkin) %> - <%=setFormat.format(checkout) %> • 
										<% if (diff == 0){ %>
											대실
										<% }else{ %> 
											<%=diff %>박
										<% } %>
									  </span>
									<b>예약 상세 &gt;</b>
								</a>
							</li>
							<%} %>
							
						</ul>
					</section>
				</div>
			</div>
			<!-- //algin-rt -->
		</div>
		<!-- //Content --> 
		<%@ include file="../footer.jsp" %>
				
	</div>
	<div id="modal" class="layer popup_cont pop_twobtn" data-v-1a29c47e="" style>
		<div class="text" data-v-1a29c47e="">예약 내역에서 삭제하시겠습니까?</div> 
		<div class="btn_wrap" data-v-1a29c47e="">
			<button data-v-1a29c47e="" onclick="cancelModal()">취소</button>
			<a href="" id="delete_button"><button class="col_mint" data-v-1a29c47e="">삭제</button></a>
		</div>
	</div>
	<button onclick="moveTop();" class="btn_go_top"  style="display: none;">상단으로</button> 
	
	<%@ include file="../script.jsp" %>
	<script>
		function sendInfo(obj){
			var form = obj.parentNode.firstChild.nextElementSibling;
			form.submit();
		}
		
		
		function modal(obj){
			console.log(obj)
			var modal = document.querySelector("#modal");
			var content = document.querySelector("body")
			var num = obj.parentNode.firstChild.nextElementSibling.querySelector("input").value;
			// form에서 num 값 들고와서 삭제버튼의 href에 경로 지정
			var delete_button = document.querySelector("#delete_button")
			delete_button.href = "reservationDelete.jsp?num=" + num;
			modal.style.display = "block";
			
		}
		function cancelModal(){
			var modal = document.querySelector("#modal");
			console.log(modal.style);
			modal.style.display = "";
			
		}
		
		
	</script>
</body>
</html>