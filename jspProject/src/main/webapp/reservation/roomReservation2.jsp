<%@page import="java.text.DecimalFormat"%>
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
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type">
<!-- <meta name="csrf-name" content="<?php echo $csrf_name; ?>" /> -->
<meta name="description"
	content="전국 호텔, 펜션, 모텔부터 워터파크, 놀이공원, 아쿠아리움까지 최저가 할인 예약">

<link rel="preload" href="${root }/css/common.css" as="style">
<link rel="stylesheet" href="${root }/css/common.css">
<link rel="stylesheet" href="${root }/css/reservation.css">
<link rel="stylesheet" href="${root }/css/owl.carousel.css">
<link rel="shortcut icon"
	href="https://image.goodchoice.kr/images/web_v3/favicon_170822.ico"
	type="image/x-icon">

<!-- CSS -->
<title>취향대로 머물다 여기어때</title>
<!-- <link rel="canonical" href="<?php echo $url; ?>" /> -->
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" src="${root }/js/library/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${root }/js/library/jquery.cookie.js"></script>
<script type="text/javascript" src="${root }/js/service/reservation.js"></script>
<%@ include file="reservationStyle.jsp"%>
</head>
<%
	DecimalFormat df = new DecimalFormat("###,###");

	request.setCharacterEncoding("utf-8");	
	String email = (String) session.getAttribute("email");
	if (email.isEmpty()){
		out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='../member/login.jsp'</script>");
	}
// 	String email = "test@naver.com";
	
	int price = Integer.parseInt(request.getParameter("price"));
	int accomNum = Integer.parseInt(request.getParameter("accomNum"));
	String accomName = request.getParameter("accomName");
	int rNum = Integer.parseInt(request.getParameter("roomNum"));
	String roomName = request.getParameter("roomName");
	String selDate = request.getParameter("selDate");
	String selDate2 = request.getParameter("selDate2");
	String checkIn = request.getParameter("checkin");
	String checkOut = request.getParameter("checkout");
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectEmail(email);
%>

<body class="mobile">
	<script>
		var deviceWidth = window.innerWidth;
		document.body.className = deviceWidth > 1023 ? "pc" : "mobile"
	</script>
	<div id="__nuxt">
		<div id="nuxt-progress" style="width: 100%;"></div>
		<div id="__layout">
			<div data-v-924c7d26="" data-v-38903b51="">
				<div class="wrap show" data-v-924c7d26="">
					<%@ include file="../header.jsp"%>
					<div data-v-f785cca6="" data-v-924c7d26="">
						<div id="content" data-v-f785cca6="">
							<div class="reserve" data-v-f785cca6="">
								<!-- pc버전 오른쪽 결제 정보 -->
								<div class="right" data-v-33033856="" data-v-f785cca6="">
									<section class="info" data-v-33033856="">
										<p class="name" data-v-33033856="">
											<strong data-v-33033856="">숙소이름</strong><%=accomName %>
										</p>
										<p data-v-33033856="">
											<strong data-v-33033856="">객실타입/기간</strong><%=roomName %> / 숙박
										</p>
									</section>
									<section class="total_price_pc" data-v-33033856="">
										<p data-v-33033856="">
											<strong data-v-33033856=""><b data-v-33033856="">총
													결제 금액</b>(VAT포함)</strong> <span class="in_price" data-v-33033856=""><%=df.format(price) %>원</span>
										</p>
										<ul data-v-33033856="">
											<li data-v-33033856="">해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
											<li data-v-33033856="">결제완료 후 <span data-v-33033856="">예약자
													이름</span>으로 바로<span data-v-33033856="">체크인</span> 하시면 됩니다.
											</li>
										</ul>
									</section>
									<div class="reserve_info mypageForm__form-inputs-wrap" aria-hidden="true" style="display:none;">
										<input type="text" name="price" aria-hidden="true" style="display:none;"value="<%=price %>">
										<input type="text" name="accomNum" aria-hidden="true" style="display:none;"value="<%=accomNum %>">
										<input type="text" name="roomNum" aria-hidden="true" style="display:none;"value="<%=rNum %>">
										<input type="text" name="selDate" aria-hidden="true" style="display:none;"value="<%=selDate %>">
										<input type="text" name="selDate2" aria-hidden="true" style="display:none;"value="<%=selDate2 %>">
										<input type="text" name="checkin" aria-hidden="true" style="display:none;"value="<%=checkIn %>">
										<input type="text" name="checkout" aria-hidden="true" style="display:none;"value="<%=checkOut %>">
										<input class="visit_input" type="text" name="visit" aria-hidden="true" style="display:none;"value="">
									</div>
									<button onclick="payment_confirm(this)" type="button" class="btn_pay gra_left_right_red"
										data-v-33033856="">결제하기</button>
								</div>
								<!-- //pc버전 오른쪽 결제 정보 -->

								<div class="left" data-v-f785cca6="">
									<div data-v-35b6e85e="" data-v-f785cca6="">
										<section class="info_chkin" data-v-35b6e85e="">
											<h3 data-v-35b6e85e="">예약자 정보</h3>
											<strong data-v-35b6e85e="">예약자 이름</strong>
											<p class="inp_wrap remove" data-v-35b6e85e="">
												<input type="text" name="userName"
													placeholder="체크인시 필요한 정보입니다." maxlength="20" value="<%=member.getName() %>"
													data-v-35b6e85e="">
											</p>
											<p data-show="name" class="alert_txt"
												style="visibility: hidden" data-v-35b6e85e="">한글, 영문,
												숫자만 입력 가능. (문자 사이 공백은 1칸만 입력 가능)</p>
											<div data-v-bf7fb84e="" data-v-35b6e85e="">
												<strong class="mt_09" data-v-bf7fb84e="">휴대폰 번호</strong>
												<div class="phone_confirm" data-v-bf7fb84e="">
													<div class="input-box" data-v-bf7fb84e="">
														<input type="tel" name="userPhone"
															placeholder="체크인시 필요한 정보입니다." maxlength="13" value="<%=member.getPhone() %>"
															class="input" data-v-bf7fb84e="" disabled>
														<div data-v-bf7fb84e="" class="cancel-icn-touch">
															<svg data-v-bf7fb84e="" height="20" width="20"
																xmlns="http://www.w3.org/2000/svg" class="cancel-icn">
        									<path data-v-bf7fb84e=""
																	d="M10 17.5a7.5 7.5 0 110-15 7.5 7.5 0 010 15zm0-8.914L7.172 5.757 5.757 7.172 8.586 10l-2.829 2.828 1.415 1.415L10 11.414l2.828 2.829 1.415-1.415L11.414 10l2.829-2.828-1.415-1.415z"></path>
       									</svg>
														</div>
													</div>
												</div>
											</div>
											<div class="visit" data-v-35b6e85e="" style="margin-top: 30px;">
												<strong data-v-35b6e85e="">방문 방법</strong>
												<div data-v-35b6e85e="">
													<button onclick="visit(this)" data-method="WALK" class="walk" data-v-35b6e85e="">
														<span data-v-35b6e85e="">도보</span>
													</button>
													<button onclick="visit(this)" data-method="CAR" class="car" data-v-35b6e85e="">
														<span data-v-35b6e85e="">차량</span>
													</button>
												</div>
												<div id="parking_comment" class="txt"
													style="visibility: hidden;" data-v-35b6e85e="">
													<span data-v-35b6e85e="">주차장 만차 시 주차가 어려울 수 있어요</span>
												</div>
											</div>
										</section>
									</div>
									<!-- 모바일 버전 결제 정보 -->
									<section class="price_wrap total_price" data-v-f785cca6="">
										<p data-v-f785cca6="">
											<strong data-v-f785cca6=""><b data-v-f785cca6="">총
													결제 금액</b>(VAT포함)</strong> <span class="in_price_app" data-v-f785cca6=""><%=df.format(price) %>원</span>
										</p>
										<ul data-v-f785cca6="">
											<li data-v-f785cca6="">해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
											<li data-v-f785cca6="">결제완료 후 <span data-v-f785cca6="">예약자
													이름</span>으로 바로<span data-v-f785cca6="">체크인</span> 하시면 됩니다
											</li>
										</ul>
									</section>
									<div class="reserve_info mypageForm__form-inputs-wrap" aria-hidden="true" style="display:none;">
										<input type="text" name="price" aria-hidden="true" style="display:none;"value="<%=price %>">
										<input type="text" name="accomNum" aria-hidden="true" style="display:none;"value="<%=accomNum %>">
										<input type="text" name="roomNum" aria-hidden="true" style="display:none;"value="<%=rNum %>">
										<input type="text" name="selDate" aria-hidden="true" style="display:none;"value="<%=selDate %>">
										<input type="text" name="selDate2" aria-hidden="true" style="display:none;"value="<%=selDate2 %>">
										<input type="text" name="checkin" aria-hidden="true" style="display:none;"value="<%=checkIn %>">
										<input type="text" name="checkout" aria-hidden="true" style="display:none;"value="<%=checkOut %>">
										<input class="visit_input" type="text" name="visit" aria-hidden="true" style="display:none;"value="">
									</div>
									<button onclick="payment_confirm(this)" type="button" class="btn_pay gra_left_right_red"
										data-v-f785cca6="">결제하기</button>
								</div>
							</div>
						</div>
					</div>


					<%@ include file="../footer.jsp"%>

				</div>
				<button onclick="moveTop();" class="btn_go_top" data-v-924c7d26=""
					style="display: none;">상단으로</button>
				<div style="display: none" data-v-924c7d26="">
					<span itemscope="itemscope"
						itemtype="http://schema.org/Organization" data-v-924c7d26=""><link
							itemprop="url" href="https://www.goodchoice.kr"
							data-v-924c7d26=""> <a itemprop="sameAs"
						href="https://www.facebook.com/goodchoiceofficial"
						data-v-924c7d26=""></a> <a itemprop="sameAs"
						href="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere"
						data-v-924c7d26=""></a> <a itemprop="sameAs"
						href="https://itunes.apple.com/kr/app/id884043462"
						data-v-924c7d26=""></a> <a itemprop="sameAs"
						href="https://post.naver.com/withinnovation" data-v-924c7d26=""></a>
						<a itemprop="sameAs"
						href="https://www.youtube.com/channel/UCLI1HOVJdhWdVl9pT__g2Zw"
						data-v-924c7d26=""></a></span>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../script.jsp"%>
</body>
<script>
function visit(obj){
	var msg = document.querySelector("#parking_comment");
	var visit_input = document.querySelectorAll(".visit_input");
	if (obj.className == "walk"){
		var walk = obj;
		var car = obj.nextElementSibling;
		walk.className = "walk on";
		car.className = "car";
		msg.style.visibility = "hidden";	
		for (var i=0; i<visit_input.length; i++){
			visit_input[i].value = "도보";
		}
	} else {
		var car = obj;
		var walk = obj.previousElementSibling;
		walk.className = "walk";
		car.className = "car on";
		msg.style.visibility = "visible";	
		for (var i=0; i<visit_input.length; i++){
			visit_input[i].value = "차량";
		}
	}
	
}
function payment_confirm(obj){
    //var regName =  /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
    var regName = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
    var regPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
    var buyer = $('input[name=userName]');
    var buyer_phone = $('input[name=userPhone]');
    var login_on = $('#order_form input[name=uno]').val() ? true : false;
    var parkingChk = $('.visit .parking_type_btn.on').hasClass('on');
    var adcno = $('#order_form input[name=adcno]').val();
    //var parkingUse = $('input[name=park_access]').val();

    /*if(Number($('.select_type_1').val()) == 5) {
        alert_Msg('휴대폰 결제는 점검중입니다. <br>다른 결제수단을 이용해 주세요.');
        return false;
    }*/
    if(!buyer.val()) {
        alert_Msg('예약자 이름을 입력해주세요.');
        return false;
    }
    if(regName.test(buyer.val())==false){
        alert_Msg('예약자 이름은 한글,영문,숫자만 입력이 가능합니다.');
        return false;
    }
    if(Number(buyer.val().length)>20){
        $('.inp_info_02 .from_name').show();
        alert_Msg('예약자 이름은 20자 이하로 입력해주세요.');
        return false;
    }
    if(!buyer_phone.val()){
        alert_Msg('휴대폰 번호를 입력해 주세요.');
        return false;
    }

    if($('#order_form').find('input[name=checkin_type]').val()==1){
        if($('input[name=dayuse_select]').val()=="N"){
            alert_Msg('이용시간을 선택해주세요.');
            return false;
        }
    }
    if ($('.visit_input')[0].value == ""){
    	alert_Msg('방문 방법을 선택해주세요');
    	return false;
    }
	reserve(obj);
}
function reserve(obj){
	var form = document.createElement("form");
	form.setAttribute("charset", "UTF-8");
    form.setAttribute("method", "Post");  //Post 방식
    form.setAttribute("action", "reserveService2.jsp"); //요청 보낼 주소
    
	var inputs = obj.previousElementSibling.children;
	console.log(inputs);
	for (var i=0; i<inputs.length; i++){
		
   		var hiddenField = document.createElement("input");
   		hiddenField.setAttribute("type", "hidden");
	    hiddenField.setAttribute("name", inputs[i].name);
	    hiddenField.setAttribute("value", inputs[i].value);
	    form.appendChild(hiddenField);
	}
     document.body.appendChild(form);
     console.log(form)
     form.submit();
}
</script>
</html>