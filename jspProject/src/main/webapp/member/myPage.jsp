<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
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
    <link rel="stylesheet" href="${root }/css/my2.css">
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
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectEmail(email);
	
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
				<li><a class="" href="myPoint.jsp">포인트</a></li>
				<li><a class="" href="myReservation.jsp">예약 내역</a></li>
				<li><a class="active" href="myPage.jsp">내 정보 관리</a></li>
			</ul>
		</nav>
    
		<div class="align_rt">
			<div class="mypage">
				<!-- 닉네임 수정 FORM -->
				<form name="form1" action="nicknameModify.jsp" autocomplete="off" method="post" novalidate="novalidate" data-form="unick">
					<!-- 폼전송시 전달되는 data target element -->
					<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
						<input type="text" name="unick" aria-hidden="true" value="<%= member.getNickname() %>">
						<input type="text" name="uname" aria-hidden="true" value="<%=member.getName() %>">
						<input type="tel" name="uphone" aria-hidden="true" value="<%=member.getPhone() %>">
					</div>

					<input type="hidden" name="yeogi_token" value="afb28bb80cc527105c307aaf90a429ed">
					<input type="hidden" id="utype" name="utype" value="3">
					<input type="hidden" name="utype" value="3">
					
					<!--// 폼전송시 전달되는 data target element -->
					<section class="top_area">
						<strong>내 정보 수정</strong>
						<div class="login_info">
							<div><img src="https://image.goodchoice.kr/profile/ico/ico_23.png" alt=""></div>
						</div>

						<div class="pw_input">
							<!-- 닉네임 -->
							<div class="pw_input__title">
								<b>닉네임</b>
								<span class="title__uinfo"><%=member.getNickname() %></span>
							</div>
							<!-- //닉네임 -->
							
							<!-- 닉네임 수정 -->
							<section class="modifying-section" style="display: none;">
								<p class="inp_wrap remove form-errors">
									<input type="text" value="<%=member.getNickname() %>" placeholder="체크인시 필요한 정보입니다." data-input="unick" data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-spacechar="true" data-rule-specialchar="true">
								</p>
								<button type="button" class="btn_etc btn_confirm active" onclick="changeNickname();">딴거할래요</button> <!-- 활성화 클래스 'active' -->
							</section>
							
							<div class="pw_input__btns-wrap">
								<button class="btns-wrap__edit-btn" type="button">수정</button>
								<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
								<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
							</div>
							<!-- //닉네임 수정 -->
						</div>
					</section>
				</form>
				<!-- //닉네임 수정 FORM -->
				
				<!-- 예약자 수정 FORM -->
				<form name="form2" action="nameModify.jsp" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
					<!-- 폼전송시 전달되는 data target element -->
					<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
						<input type="text" name="unick" aria-hidden="true" value="<%= member.getNickname() %>">
						<input type="text" name="uname" aria-hidden="true" value="<%=member.getName() %>">
						<input type="tel" name="uphone" aria-hidden="true" value="<%=member.getPhone() %>">
					</div>
					<input type="hidden" name="yeogi_token" value="afb28bb80cc527105c307aaf90a429ed">
					<input type="hidden" name="utype" value="3">

					<section class="top_area">
						<div class="pw_input">
							<div class="pw_input__title">
								<b>예약자 이름</b>
								<span class="title__uinfo"><%=member.getName() %></span>
							</div>
							<section class="modifying-section" style="display: none;">
								<p class="inp_wrap remove form-errors">
									<input type="text" id="uname" value="<%=member.getName() %>" placeholder="체크인시 필요한 정보입니다." data-input="uname" data-rule-spacechar="true" data-rule-specialchar="true">
								</p>
							</section>
							<div class="pw_input__btns-wrap">
								<button class="btns-wrap__edit-btn" type="button" style="?android:attr/borderlessButtonStyle">수정</button>
								<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
								<button class="btns-wrap__cancel-btn" type="button" style="?android:attr/borderlessButtonStyle">수정취소</button>
							</div>
						</div>
					</section>
				</form>
				<!-- //예약자 수정 FORM -->
				<!-- 휴대폰 수정 FORM -->
				<form name="form3" action="phoneModify.jsp" autocomplete="off" method="post" novalidate="novalidate" data-form="uphone">
				<section>
					<!-- 폼전송시 전달되는 data target element -->
					<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
						<input type="text" name="unick" aria-hidden="true" value="<%= member.getNickname() %>">
						<input type="text" name="uname" aria-hidden="true" value="<%=member.getName() %>">
						<input type="tel" name="uphone" aria-hidden="true" value="<%=member.getPhone() %>">
					</div>
					<input type="hidden" name="yeogi_token" value="887dfdfbfe14dd9a8979e9bb7fcc0368">
					<input type="hidden" name="utype" value="3">
					<div class="pw_input phone_confirm">
						<div class="pw_input__title">
							<b>휴대폰 번호</b>
							<span class="title__uinfo"><%=member.getPhone() %></span>
							<div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
						</div>
						<div class="modifying-section" style="display: block;">
							<div id="sendCode">
								<section>
									<div class="inp_wrap remove form-errors inp_error">
										<input type="tel" id="phone_number" value="" placeholder="체크인시 필요한 정보입니다." maxlength="13" data-input="uphone" 
										data-rule-phonenumber="true" required="true" class="required" aria-invalid="true">
										<button type="button" class="btn_checked" style="display: none;">확인</button>
									</div>
								</section>
							</div>
						</div>
						<div class="pw_input__btns-wrap">
							<button class="btns-wrap__edit-btn " type="button">수정</button>
							<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
							<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
						</div>
					</div>
				</section>
			</form>
				<!-- //휴대폰 수정 FORM -->
			</div>

		<div class="bot_btn">
			<p>여기어때를 이용하고 싶지 않으신가요?</p>
			<button type="button" onclick="location.href='logout.jsp';">로그아웃</button>
			<button type="button"><a href="delete.jsp">회원탈퇴</a></button>
		</div>
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
<script src="${root }/js/service/mypage.js"></script>
<script type="text/javascript" src="${root }/js/service/phone-verification.js"></script>

</body>
</html>