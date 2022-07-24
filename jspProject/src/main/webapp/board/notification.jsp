<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.NotificationDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.NotificationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type">
<meta name="csrf-name" content="yeogi_token">
<meta name="description"
	content="전국 호텔, 펜션, 모텔부터 워터파크, 놀이공원, 아쿠아리움까지 최저가 할인 예약">
<link rel="shortcut icon"
	href="//image.goodchoice.kr/images/web_v3/favicon_170822.ico"
	type="image/x-icon">

<!-- CSS -->
<title>취향대로 머물다 여기어때</title>
<link rel="stylesheet" href="${root }/css/common.css">
<link rel="stylesheet" href="${root }/css/more.css">
<link rel="canonical" href="https://www.goodchoice.kr/">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript"
	src="${root }/js/library/jquery-1.12.4.min.js"></script>

</head>
<body class="pc">
	<%
	// 공지사항 전체 불러와서
	NotificationDAO notiDao = new NotificationDAO();
	ArrayList<NotificationDTO> notifications = notiDao.selectAll();
	SimpleDateFormat getFormat = new SimpleDateFormat("yyyy.MM.dd");
	
	// 오늘 날짜로 올라온 공지여부 확인(diff) -> 공지에 new 이모지 띄우기
	NotificationDTO lastNoti = notifications.get(0);
	Date lastNotiDate = getFormat.parse(lastNoti.getCreateDate());
	Date today = new Date();
	long diff = (today.getTime() - lastNotiDate.getTime()) / (24 * 60 * 60 * 1000);
	
	
	%>
	<!-- Wrap -->
	<div class="wrap show">
		<%@ include file="../header.jsp"%>

		<!-- Sub Top -->
		<div class="sub_top_wrap">
			<div class="sub_top bg_kong_3">
				<h2>더보기</h2>
			</div>
		</div>
		<!-- //Sub Top -->

		<!-- Content  -->
		<div id="content" class="sub_wrap more_wrap">
			<!-- Nav -->
			<nav>
				<ul>
					<li><a href="notification.jsp" class="active">공지사항</a></li>
					<li><a href="event.jsp">이벤트</a></li>
					<!-- <li><a href="faq.jsp">자주 묻는 질문</a></li> -->
					<li><a href="inquiry.jsp">1:1 문의</a></li>
				</ul>
			</nav>
			<!-- //Nav -->

			<!-- notification -->
			<div class="align_rt">
				<div class="notice">
					<div class="mobile_top">공지사항</div>
					<!-- Tab -->
					<div class="tab">
						<span class="tab_btn active">서비스 공지사항
						<% if (diff == 0) {%> 
						<i class="ico_new">NEW</i></span>
						<%} %>
						<!-- <span class="tab_btn">여기어때 언론보도 <i class="ico_new">NEW</i></span> -->
					</div>
					<!-- //Tab -->

					<!-- 공지사항  -->
					<div class="tab_each">
						<ul id="notices" class="show_list open_list">
							<% for (NotificationDTO noti: notifications){ %>
							<li>
								<a href="notification.jsp#notive_tab" id="notive_tab"
								class="list_que">
									<p><%=noti.getTitle() %></p>
									<span><%=noti.getCreateDate() %>
									<%
										Date date = getFormat.parse(noti.getCreateDate());
										diff = (today.getTime() - date.getTime()) / (24 * 60 * 60 * 1000);
									%>
									<% if (diff == 0){ %>
									<i class="ico_new">NEW</i></span>
									<%} %>
								</a>

								<div>
									<p>
										<span style="font-family: arial; font-size: 10pt;">공지사항1</span>
									</p>
									<div>
										<font face="arial">
										<%=noti.getContent() %> 
										</font>
									</div>
								</div>
							</li>
							<%} %>
						</ul>
						<!-- //공지사항  -->
						<!-- pagination -->
<!-- 						<div id="notice_pagination"> -->
<!-- 							<div class="paging"> -->
<!-- 								<button class="on">1</button> -->
<!-- 								<button>2</button> -->
<!-- 								<button>3</button> -->
<!-- 								<button>4</button> -->
<!-- 								<button>5</button> -->
<!-- 								<button class="next">다음</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<!-- //pagination -->
					</div>
				</div>
			</div>
			<!-- //notification -->
		</div>
		<!-- //Content  -->
		<%@ include file="../footer.jsp"%>

	</div>

	<!-- 상단으로 -->
	<button class="btn_go_top" onclick="moveTop();" style="display: none;">상단으로</button>


	<!-- Script -->
	<%@ include file="../script.jsp"%>
	<script type="text/javascript"
		src="${root }/js/library/validation/jquery.validate.js"></script>
	<script type="text/javascript"
		src="${root }/js/library/validation/additional-methods.js"></script>
	<script type="text/javascript" src="${root }/js/service/more.js"></script>

</body>
</html>