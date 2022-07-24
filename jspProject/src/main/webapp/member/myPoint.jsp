<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="${root }/css/font.css">
    <link rel="stylesheet" href="${root }/css/my.css">
    <link rel="canonical" href="https://www.goodchoice.kr/">
    <script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="${root }/js/library/jquery-1.12.4.min.js"></script>
    
</head>
<body class="pc">
<% 
	String email = (String) session.getAttribute("email");
	if (email.isEmpty()){
		out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='login.jsp'</script>");
	}
// 	String email = "test@naver.com";
	
%>
<!-- Wrap -->
<div class="wrap show">
<%@ include file="../header.jsp" %>

	<!-- Sub Top -->
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>내정보</h2>
		</div>
	</div>
	<!-- //Sub Top -->
	
	<!-- Content  -->
	<div id="content" class="sub_wrap my_wrap">
		<p class="sub_title">내 정보 관리</p>

		<!-- Nav -->
		<nav>
			<ul>
				<li><a class="active" href="myPoint.jsp">포인트</a></li>
				<li><a class="" href="myReservation.jsp">예약 내역</a></li>
				<li><a class="" href="myPage.jsp">내 정보 관리</a></li>
			</ul>
		</nav>
		<!-- //Nav -->
		<!-- content -->
		<div class="align_rt">
	        <input type="hidden" name="page" value="1">
	        <div>
	            <div class="point_show gra_red">
	                <span>사용 가능 포인트</span>
	                <strong id="point-page-show">0 P</strong>
	            </div>
	
	            <ul class="point_list"></ul>
	        </div>
	
	        <!-- 리스트 없을시 -->
	        <div class="list_none" style="display: block;">
	            적립한 포인트가 없습니다<br>
	        </div>
	    </div>
		<!-- //content -->
    
	</div>
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
<script type="text/javascript" src="${root }/js/service/validate.js"></script>
<script type="text/javascript" src="${root }/js/service/my.js"></script>
<script type="text/javascript" src="${root }/js/service/mypage.js"></script>
<script type="text/javascript" src="${root }/js/service/phone-verification.js"></script>

</body>
</html>