<%@page import="board.EventDAO"%>
<%@page import="board.EventDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="root" value="/" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type">
    <meta name="csrf-name" content="yeogi_token">
    <meta name="description" content="전국 호텔, 펜션, 모텔부터 워터파크, 놀이공원, 아쿠아리움까지 최저가 할인 예약">
    <link rel="shortcut icon" href="//image.goodchoice.kr/images/web_v3/favicon_170822.ico" type="image/x-icon">

	<!-- CSS -->
    <title>취향대로 머물다 여기어때</title>
    <link rel="stylesheet" href="${root }/css/common.css">
    <link rel="stylesheet" href="${root }/css/more.css">
    <link rel="canonical" href="https://www.goodchoice.kr/">
    <script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="${root }/js/library/jquery-1.12.4.min.js"></script>
    
</head>
<body class="pc">
<%
	EventDAO eventDao = new EventDAO();
	ArrayList<EventDTO> events = eventDao.selectAll();
%>
<!-- Wrap -->
<div class="wrap show">
<%@ include file="../header.jsp" %>

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
		        <li><a href="notification.jsp">공지사항</a></li>
		        <li><a href="event.jsp" class="active">이벤트</a></li>
		        <!-- <li><a href="faq.jsp">자주 묻는 질문</a></li> -->
		        <li><a href="inquiry.jsp">1:1 문의</a></li>
		    </ul>
		</nav>
		<!-- //Nav -->
		
		<!-- notification -->
		<div class="align_rt">
			<div class="event">
				<div class="mobile_top">이벤트</div>	
				<ul id="event" class="event_list">
					<% for(EventDTO event: events){ %>
					<li>
						<b><%=event.getTitle() %></b>
						<span>기간: <%=event.getStartDate() %> ~ <%=event.getEndDate() %></span>
						<a href="/more/eventView/2347?page=0"><img src="//image.goodchoice.kr" alt=""></a>
					</li>
					<%} %>
				</ul>	
			</div>
		</div>
		<!-- //notification -->
	</div>
	<!-- //Content  -->
<%@ include file="../footer.jsp" %>

</div>

<!-- 상단으로 -->
<button class="btn_go_top" onclick="moveTop();" style="display: none;">상단으로</button>


<!-- Script -->
<%@ include file="../script.jsp" %>
<script type="text/javascript" src="${root }/js/library/validation/jquery.validate.js"></script>
<script type="text/javascript" src="${root }/js/library/validation/additional-methods.js"></script>
<script type="text/javascript" src="${root }/js/service/more.js"></script>

</body>
</html>