<%@page import="board.InquiryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<jsp:useBean id="inquiryDao" class="board.InquiryDAO" />
<%
	String email = (String) session.getAttribute("email");
	if (email.isEmpty()){
		out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='../member/login.jsp'</script>");
	}
	
	ArrayList<InquiryDTO> inquires = inquiryDao.selectAll(email);
%>

<body class="pc">

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
		        <li><a href="event.jsp">이벤트</a></li>
		        <!-- <li><a href="faq.jsp">자주 묻는 질문</a></li> -->
		        <li><a href="inquiry.jsp" class="active">1:1 문의</a></li>
		    </ul>
		</nav>
		<!-- //Nav -->
		
		<!-- align_rt -->
		<div class="align_rt">
			<div class="inquiry">
				<!-- mobile top -->
				<div class="mobile_top">1:1문의
					<button class="top_btn" onclick="$('.tab .tab_btn').eq(1).trigger('click');">새 문의 작성</button>
				</div>
				<!-- //mobile top -->
				
				<!-- Tab -->
				<div class="tab">
					<span class="tab_btn active">나의 문의 내역</span>
					<span class="tab_btn ">새 문의 작성</span>
				</div>
				<!-- Tab -->
				
				<!-- 문의 리스트 -->
				<div class="tab_each" style="display:block">
			
					<ul class="show_list open_list" id="inquiry_list">
						<c:forEach var="inquiry" items="${inquires }" >
							<li onclick="">
								<a href="https://www.goodchoice.kr/more/inquiry#inquiry_list" class="list_que"><!-- 답변완료/ NEW 버튼 2벌임 -->
									<p><b>이용문의</b>
										${inquiry.getContent() }<b class="reply_chk">문의 등록</b>
									</p>
									<span>작성일 ${inquiry.getCreate_date() }</span>
								</a>
					
								<div class="list_ans">
									<b class="title">문의</b>
									<div>${inquiry.getContent() }</div>
								</div>
							</li>
						</c:forEach>
						
					</ul>
				</div>
				<!-- //문의 리스트 -->
			
				<!-- 문의 작성 -->
				<div class="tab_each">
					<form name="inq-form" method="post" action="inquiryService.jsp">
						<div class="alert_top">
							<p>여기어때 이용 중 불편하신 점을 문의주시면 <em>최대한 빠른 시일내에 답변 드리겠습니다.</em></p>
						</div>
	
						<section class="info_wrap">
							<b>카테고리유형</b>
							<select name="room_type" id="room_type" class="select_type_2">
								<option value="">카테고리유형을 선택하세요</option>
								<option value="모텔">모텔</option>
								<option value="호텔·리조트">호텔·리조트</option>
								<option value="펜션">펜션</option>
								<option value="게스트하우스">게스트하우스</option>
								<option value="캠핑/글램핑">캠핑/글램핑</option>
								<option value="한옥">한옥</option>
								<option value="액티비티">액티비티</option>
								<option value="현금성(유상)포인트">현금성(유상)포인트</option>
							</select>
	
							<b>문의유형</b>
							<select name="inq_type" id="inq_type" class="select_type_2">
								<option value="">문의유형을 선택하세요</option>
								<option value="이벤트">이벤트</option>
								<option value="예약/결제">예약/결제</option>
								<option value="취소/환불">취소/환불</option>
								<option value="혜택받기">혜택받기</option>
								<option value="이용문의">이용문의</option>
								<option value="회원정보">회원정보</option>
								<option value="리뷰">리뷰</option>
								<option value="환불신청">환불신청</option>
								<option value="기타">기타</option>
							</select>
	
							<div class="phone-block">
								<b>휴대폰 번호</b>
								<p class="inp_wrap">
									<input class="js-phone-number" data-type="phoneNumber" type="tel" maxlength="11" name="uphone" value="" placeholder="선택사항입니다.">
									<button type="button" class="reset_val">초기화</button>
								</p>
							</div>
	
							<div class="email-block">
								<b>이메일</b>
								<p class="inp_wrap">
									<input data-email-validate="" class="js-email-string" type="email" value="" name="uemail" placeholder="선택사항입니다.">
									<button type="button" class="reset_val">초기화</button>
								</p>
							</div>
						</section>
	
						<section class="text_wrap">
							<b>문의내용</b>
							<div>
								<textarea name="content" id="questionTextarea"></textarea>
								<ul class="placeholder_txt">
									<li>문의하실 내용을 10자 이상 입력해 주세요.</li>
									<li>문의하시는 제휴점 이름과 예약정보를 남겨주시면 보다 빠른 상담이 가능합니다.</li>
									<li>문의 내용 작성 시 개인정보가 입력되지 않도록 주의 부탁드립니다.</li>
								</ul>
							</div>
						</section>
						<section class="btn_wrap ">
							<button class="btn_red_fill" type="button" onclick="validation()">작성 완료</button>
						</section>
					</form>
				</div>
				<!-- //문의 작성 -->
			</div>
		</div>
		<!-- //align_rt -->
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

<script>
function validation(){
	var phoneRegExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/;
	var emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	// 카테고리 검증
	if (!$('#room_type option:selected').val()){
		alert('카테고리를 선택해주세요.');
		return;
	}
	// type 검증
	if (!$('#inq_type option:selected').val()){
		alert('문의 유형을 선택해주세요.');
		return;
	}
	// 휴대폰
	var phone = $('.js-phone-number').val()
	if (phone){
		if (!phoneRegExp.test(phone)){
			alert('핸드폰 번호를 정확히 입력해주세요.')
		}
	}
	
	// 이메일
	var email = $('.js-email-string').val()
	if (email){
		if (!emailRegExp.test(email)){
			alert('이메일을 정확히 입력해주세요.')
		}
	}
	
	// content 
	if (!$('#questionTextarea').val()){
		alert('문의 내용을 작성해주세요');
		return;
	} else if ($('#questionTextarea').val().length < 10){
		alert('문의 내용을 10자 이상 입력해주세요');
		return;
	}
	
	var form = document.forms['inq-form'];
	form.submit();
	

}
</script>

</body>
</html>