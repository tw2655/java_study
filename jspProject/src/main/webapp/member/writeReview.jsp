<%@page import="reservation.ReservationDTO"%>
<%@page import="reservation.ReservationDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="reservation.MyReserveDTO"%>
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
<link rel="stylesheet" href="${root }/css/my2.css">
<link rel="stylesheet" href="${root }/css/more.css">
<link rel="shortcut icon"
	href="https://image.goodchoice.kr/images/web_v3/favicon_170822.ico"
	type="image/x-icon">

<!-- CSS -->
<title>취향대로 머물다 여기어때</title>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript"
	src="${root }/js/library/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="${root }/js/library/jquery.cookie.js"></script>
<!-- vuejs 스타일 시트 써야하는데 너무 긺 - 이 코드 없으면 mobile에서 다시예약버튼이 이상하게 보임 -->
<%--
	<style data-vue-ssr-id="7e56e4e3:0 a4416d6a:0 34c88125:0 6dddd935:0 879b8502:0 edcdab14:0 62376f3c:0 e11ef8c8:0 b13ffd10:0" > 부분
	 --%>
<%@ include file="../member/reservationDetailHead.jsp"%>
</head>
<%
request.setCharacterEncoding("utf-8");
String userNickname = (String) session.getAttribute("nickname");
if (userNickname.isEmpty()){
	out.print("<script>alert('로그인 후 이용가능합니다.'); location.href='login.jsp'</script>");
}
// String userNickname = "등적색핵탄두";

SimpleDateFormat getFormat = new SimpleDateFormat("yyyy.MM.dd E HH:mm");
SimpleDateFormat setFormat = new SimpleDateFormat("MM.dd E");
DecimalFormat df = new DecimalFormat("###,###");

String reNum = request.getParameter("reserve");
ReservationDAO reserveDao = new ReservationDAO();
ReservationDTO reservation = reserveDao.selectReservation(reNum);

Date checkinDate = getFormat.parse(reservation.getCheckIn());
Date checkoutDate = getFormat.parse(reservation.getCheckOut());
long diff = (checkoutDate.getTime() - checkinDate.getTime()) / (24 * 60 * 60 * 1000);
%>
<style>
.star{
    position: relative;
    font-size: 2rem;
    color: #FFA726;
}
    
.star input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
}
    
.star span{
    width: 0;
    position: absolute; 
    left: 0;
    color: #FFA726;
    overflow: hidden;
    pointer-events: none;
}
</style>
<body class="mobile">
	<script>var deviceWidth=window.innerWidth;document.body.className=deviceWidth>1023?"pc":"mobile"</script>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div data-v-924c7d26="" data-v-ab7c2ca2="">
				<div class="wrap show" data-v-924c7d26="">
					<%@ include file="../header2.jsp"%>
					<div class="sub_top_wrap" data-v-924c7d26="" data-v-ab7c2ca2="">
						<div class="sub_top bg_kong_2" data-v-924c7d26=""
							data-v-ab7c2ca2="">
							<h2 data-v-924c7d26="" data-v-ab7c2ca2="">내정보</h2>
						</div>
					</div>
					<div data-v-4c4f460e="" data-v-924c7d26="">
						<div data-v-4c4f460e="">
							<input data-v-4c4f460e="" type="hidden" name="do_no"
								value="88579763"> <input data-v-4c4f460e=""
								type="hidden" name="cancel_do_no" value="88579763">
							<div data-v-4c4f460e="" id="content" class="sub_wrap my_wrap">
								<p data-v-4c4f460e="" class="sub_title">예약 상세 내역</p>
								<!-- Nav -->
								<div data-v-4c4f460e="">
									<nav>
										<ul>
											<li><a class="" href="myPoint.jsp">포인트</a></li>
											<li><a class="" href="myReservation.jsp">예약 내역</a></li>
											<li><a class="active" href="myPage.jsp">내 정보 관리</a></li>
										</ul>
									</nav>
								</div>
								<!-- //Nav -->
								<div data-v-4c4f460e="" class="align_rt">
									<div data-v-4c4f460e="" class="reserve_detail">
										<!---->
										<div data-v-4c4f460e="" class="info">
											<div data-v-4c4f460e="">

												<strong style="padding-bottom: 20px;" data-v-4c4f460e="">리뷰
													작성</strong> <span data-v-4c4f460e=""><b
													style="padding-bottom: 20px;"><%=reservation.getAccommName()%></b><br>
													<small><%=reservation.getRoomName()%> • 
													<% if (diff == 0) {%>
													대실 
													<%} else {%> 
													<%=diff%>박 
													<%}%></small> </span>
											</div>
										</div>
										<div class="inquiry" style="background-color: #fff;">
										<section data-v-4c4f460e="">
											<!-- 리뷰 작성 -->
											<div class="tab_each">
												<form name="inq-form" method="post"
													action="writeReviewService.jsp">
													<input type="text" name="num" aria-hidden="true" style="display:none;" value="<%=reservation.getNum() %>">
													<input type="text" name="nickname" aria-hidden="true" style="display:none;" value="<%="ggggg" %>">
													<input type="text" name="accomm_num" aria-hidden="true" style="display:none;" value="<%=reservation.getAccommNum() %>">
													<input type="text" name="room_name" aria-hidden="true" style="display:none;" value="<%=reservation.getRoomName() %>">
													<section class="info_wrap" style="margin-bottom: 20px;">
											            <p class="m-0 pl-1" style="color: #6C757D;">평점</p>
											            <span class="star">
											                ☆☆☆☆☆
											                <span>★★★★★</span>
											                <input type="range" oninput="drawStar(this)" id="rate" name="rate" value="0" step="1" min="0" max="10">
											            </span>
											            <span id="star-rate" style="font-size: 1.5rem; color: #FFCC1C;" >0.0</span><span> / 10.0</span>
											        </section> 
													<section class="info_wrap" style="margin-bottom: 20px;">
														<div class="title">
															<b>제목</b>
															<p class="inp_wrap">
																<input data-email-validate="" class="js-email-string"
																	name="title" placeholder="제목을 입력해주세요">
															</p>
														</div>
													</section>

													<section class="text_wrap" >
														<b style="margin:0;">리뷰내용</b>
														<div>
<!-- 															<ul class="placeholder_txt"> -->
<!-- 																<li></li> -->
<!-- 															</ul> -->
															<textarea name="content" id="questionTextarea" placeholder="리뷰를 작성해주세요(수정 불가)"></textarea>
														</div>
													</section>
													<section class="btn_wrap ">
														<button onclick="check()" class="btn_red_fill" type="button" onclick="validation()">작성 완료</button>
														<button onclick="history.back(-1);" data-v-4c4f460e="" type="button" style="width:144px; height:48px;">취소</button>
													</section>
												</form>
											</div>
											<!-- //문의 작성 -->
										</section>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="../footer.jsp"%>
				</div>
				<button onclick="moveTop();" class="btn_go_top" data-v-924c7d26="">상단으로</button>
			</div>
		</div>
	</div>
	<script>window.__NUXT__=(function(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G){return {layout:"my",data:[{unUsedList:[],usedList:[{order:{orderId:57168954,doNo:88579763,status:l,orderDate:"2022-03-25 17:10:14",biztrip:a},facility:{id:65307,categoryCode:g,categoryType:i,name:"제주 오케이",address:"제주도 제주시 오라일동 2444-15",phoneNumber:"050448915065",latitude:"33.4984984438782",longitude:"126.513386382671",category:i},orderItemList:[{orderItemId:56960531,dopNo:e,reservationType:p,roomServiceType:h,processType:h,name:"일반",stayNights:g,rentHours:c,thumbnail:"\u002Fadimg_new\u002F65307\u002F310601\u002Fe44a12bb10029f5d5055fb15f76e9964.jpg",minGuest:e,maxGuest:e,addGuestCharge:a,orderItemOptionList:[{orderItemOptionId:59957697,dpodNo:523150035,checkinDate:q,checkoutDate:r}],checkinDate:q,checkoutDate:r}],restaurantList:c,booker:{id:j,name:m,safeNumber:"050448858267",phoneNumber:k,b2b:a},review:{hasReview:a,reviewWritable:a,reviewPoint:b,reviewWritableDayLimit:n},cancel:{cancelStatus:s,cancelPolicyList:[],refundPayment:c}},{order:{orderId:43561610,doNo:20543883,status:l,orderDate:"2018-08-12 01:42:20",biztrip:a},facility:{id:50583,categoryCode:g,categoryType:i,name:"남포 ATTO",address:d,phoneNumber:d,latitude:"35.1031168338",longitude:"129.031686205",category:i},orderItemList:[{orderItemId:43378367,dopNo:e,reservationType:t,roomServiceType:h,processType:h,name:"스탠다드[주차불가]",stayNights:c,rentHours:4,thumbnail:"\u002Fadimg_new\u002F50583\u002F8071\u002Fc515dfdd7777b40acef505660e91f060.jpg",minGuest:e,maxGuest:e,addGuestCharge:a,orderItemOptionList:[{orderItemOptionId:45776738,dpodNo:56602516,checkinDate:u,checkoutDate:v}],checkinDate:u,checkoutDate:v}],restaurantList:c,booker:{id:j,name:m,safeNumber:"050440157299",phoneNumber:k,b2b:a},review:{hasReview:a,reviewWritable:a,reviewPoint:b,reviewWritableDayLimit:n},cancel:{cancelStatus:s,cancelPolicyList:[],refundPayment:c}}],canceledList:[{order:{orderId:19016132,doNo:67227302,status:w,orderDate:"2021-06-06 23:09:43",biztrip:a},facility:{id:4681,categoryCode:g,categoryType:i,name:"신도림 NO.25",address:"서울 구로구 구로동 44-10",phoneNumber:"050440554428",latitude:"37.50260475",longitude:"126.8909914",category:i},orderItemList:[{orderItemId:18927695,dopNo:e,reservationType:p,roomServiceType:h,processType:h,name:"STANDARD(일반실\u002F65인치TV\u002F무료넷플릭스\u002F미러링\u002F일체형PC\u002F공기청정기)",stayNights:g,rentHours:c,thumbnail:"\u002Fadimg_new\u002F4681\u002F341879\u002F5d62eb4e1a4c2e0e7d7042117ce88870.jpg",minGuest:e,maxGuest:e,addGuestCharge:a,orderItemOptionList:[{orderItemOptionId:19949990,dpodNo:369112807,checkinDate:x,checkoutDate:y}],checkinDate:x,checkoutDate:y}],restaurantList:c,booker:{id:j,name:m,safeNumber:"050440253318",phoneNumber:k,b2b:a},review:{hasReview:a,reviewWritable:a,reviewPoint:b,reviewWritableDayLimit:n},cancel:{cancelStatus:z,cancelPolicyList:[],refundPayment:{refundTransactionId:1653944,transactionStatus:l,refundAmount:A,cancelFeeAmount:b,refundPaymentAmount:A,cancelFeePaymentAmount:b,refundCouponAmount:b,refundPointAmount:b,cancelFeePointAmount:b,refundGiftCardAmount:b,cancelFeeGiftCardAmount:b,refundType:h,refundedDate:"2021-06-07 14:41:28"}}},{order:{orderId:9760295,doNo:52968342,status:w,orderDate:"2020-10-08 12:36:43",biztrip:a},facility:{id:4282,categoryCode:g,categoryType:i,name:"동성로 갤러리-1호점",address:"대구 중구 북성로1가  80-2",phoneNumber:"050440032991",latitude:"35.87433558",longitude:"128.5942518",category:i},orderItemList:[{orderItemId:9715611,dopNo:e,reservationType:t,roomServiceType:"PAYBACK",processType:h,name:"프리미엄A(넷플,웨이브,최신영화,조식제공)(페이백)",stayNights:c,rentHours:B,thumbnail:"\u002Fadimg_new\u002F4282\u002F25871\u002F2a3b647763038cae61c24867290d512e.jpg",minGuest:e,maxGuest:e,addGuestCharge:a,orderItemOptionList:[{orderItemOptionId:10253414,dpodNo:298537576,checkinDate:C,checkoutDate:D}],checkinDate:C,checkoutDate:D}],restaurantList:c,booker:{id:j,name:m,safeNumber:"050440347283",phoneNumber:k,b2b:a},review:{hasReview:a,reviewWritable:a,reviewPoint:b,reviewWritableDayLimit:n},cancel:{cancelStatus:z,cancelPolicyList:[],refundPayment:{refundTransactionId:314075,transactionStatus:l,refundAmount:E,cancelFeeAmount:b,refundPaymentAmount:E,cancelFeePaymentAmount:b,refundCouponAmount:2000,refundPointAmount:b,cancelFeePointAmount:b,refundGiftCardAmount:b,cancelFeeGiftCardAmount:b,refundType:h,refundedDate:"2020-10-08 12:37:57"}}}],unUsedListState:{isLoading:a,hasNext:a,page:g},usedListState:{isLoading:a,hasNext:a,page:g},canceledListState:{isLoading:a,hasNext:a,page:g}}],fetch:{},error:c,state:{userInfo:{uno:j,utype:B,ulevel:b,uid:"jiyoung1329@naver.com",unick:"충렬탑협잡꾼",uname:"김*영",reserve_phone:k,realauth:f,upath:"https:\u002F\u002Fimage.goodchoice.kr\u002Fprofile\u002Fico\u002Fico_24.png",grade_path:"https:\u002F\u002Fimage.goodchoice.kr\u002Fprofile\u002Fico\u002Fico_21.png",deviceid:"357557054760556",f_code:"X718150",password_expired:f,phone_verified:o,sns_agree:o,ustate:g,ugrade:F,marketing_action:o,recent:o,ureg:"2017-08-06 03:40:07",nickstate:"unique",user_couponissue_state:f,isElite:f,previous_signup_state:f,hero:{},my_elite_module:{type:F,button_text:"엘리트 혜택",button_url:"yeogi:\u002F\u002Fdetails?schemetype=webview&anim=2&title=나의 엘리트 현황&titletype=2&url=https:\u002F\u002Fapi3.goodchoice.kr\u002Fmy\u002FeliteStatus",bubble_text:"엘리트 회원님! 여기어때 VIP 혜택 누리세요~",eliteCount:5}},myInfo:{point:b,ugrade:"New",elite_cnt:b,isElite:f,next_ugrade_point:"Gold 등급까지 15점 남았습니다.",owner_coupon_cnt:b,favorites_cnt:b,reserve_cnt:b,activity_cnt:b,alarm_cnt:b,new:{MY_PAGE:{MESSAGE:f,COUPON:f,COUPON_FIVE:f,RESERVATION:f,POINT:f}}},accessToken:"RPDqmE2cuwh7P5_ykwHmKevcfU6d92UgCxkOFa4fOiIeZT1P1wNmLIQBkGLqGy1A8tE0au4jhsicMhm5_bXjCyfZV7cZGgOriqXJasWP0VC3CO_SMHq3_d3Ct5ycM--uA_qhATkvq46dZg2u093s1b1Xwt6pWzOTALHSYjkDhPS_OR1HrfNzcQ-s0inhxOVywIKRYWlN00i-14sWyOK8Ul5agWeEzWSM1ZHQOhQEU4ZsCfSuBcehuIIO-bmNzjYzCGSKWD5N_g4Tgu0c7Vh7cQ==",asyncHeaders:{"X-User-Id":j,"X-WITHINAPI-APP-VERSION":["WEB 2.0"],"X-Device-User-Agent":"Mozilla\u002F5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\u002F537.36 (KHTML, like Gecko) Chrome\u002F102.0.5005.63 Safari\u002F537.36 Edg\u002F102.0.1245.33","X-Device-OS":G,"X-Device-Id":G,"Content-Type":"application\u002Fjson;charset=UTF-8",Authorization:"Bearer RPDqmE2cuwh7P5_ykwHmKevcfU6d92UgCxkOFa4fOiIeZT1P1wNmLIQBkGLqGy1A8tE0au4jhsicMhm5_bXjCyfZV7cZGgOriqXJasWP0VC3CO_SMHq3_d3Ct5ycM--uA_qhATkvq46dZg2u093s1b1Xwt6pWzOTALHSYjkDhPS_OR1HrfNzcQ-s0inhxOVywIKRYWlN00i-14sWyOK8Ul5agWeEzWSM1ZHQOhQEU4ZsCfSuBcehuIIO-bmNzjYzCGSKWD5N_g4Tgu0c7Vh7cQ=="},"alert-popup":{isOpenAlert:a,boldMessage:d,message:d,buttonName:d,callback:c,redirectUrl:d,globalAlertOpened:a,globalAlertTitle:d,globalAlertMessage:d,globalAlertCallback:c},"cancel-popup":{isOpenCancelPopup:a,isOpenCancelReasonPopup:a,isOpenCancelReasonError:a,isOpenCanelConfirmPopup:a,isOpenRefundPolicyPopup:a,isOpenCancelPolicyPopup:a,cancelReason:d,orderId:d,refundPolicyList:[]},checkout:{checkoutResult:c},"confirm-popup":{isOpenedConfirmPopup:a,message:d,closeBtnName:d,acceptBtnName:d,closeCallback:c,acceptCallback:c,globalConfirmAutoCloseRejected:a,globalConfirmOpened:a,globalConfirmTitle:d,globalConfirmMessage:d,globalConfirmAcceptBtnName:d,globalConfirmCallback:c,globalConfirmCancelCallback:c},coupon:{isOpenedCouponPopup:a,couponList:[]},discountMethodStore:{giftCard:{name:c,giftCardNo:c,code:c,balance:b,totalBalance:b},discountAmount:{couponAmount:b,pointAmount:b,giftCardAmount:b},isValidGiftCardNumber:a,giftCardErrorMessage:d,isOpenedGiftCardPopup:a},reservation:{reservationDetail:c},"toast-popup":{globalToastOpened:a,globalToastMessage:d},user:{},withdraw:{isSurveyDone:a,additionalReason:d,selectedReasonType:d}},serverRendered:true,routePath:"\u002Freservations",config:{baseUrl:"https:\u002F\u002Fapi-gw.goodchoice.kr",yeogiDomain:"https:\u002F\u002Fwww.goodchoice.kr",sentry:{config:{environment:"production"}},_app:{basePath:"\u002F",assetsPath:"\u002F_nuxt\u002F",cdnURL:c}}}}(false,0,null,"",-1,"N",1,"NORMAL","MOTEL",5151356,"01022496984","COMPLETED","김지영",14,"Y","STAY","2022-03-25 14:00:00","2022-03-26 10:00:00","EXPIRED","RENT","2018-08-12 14:00:00","2018-08-12 18:00:00","REFUNDED","2021-06-08 21:00:00","2021-06-09 12:00:00","ALREADY_DONE",50000,3,"2020-10-08 14:00:00","2020-10-08 17:00:00",23000,"elite","WEB"));</script>
	<%@ include file="../script.jsp"%>


</body>
<script>
$(document).ready(function () {
    var stars = document.getElementsByClassName("star")
    for (var i=0; i<stars.length; i++){
        review_rate = stars.item(i).getAttribute('value')
        stars.item(i).querySelector("span").style.width = `${review_rate * 10}%`;
    }
});

const drawStar = (target) => {
	console.log(target.value)
    document.querySelector('.star span').style.width = (Number(target.value) * 9.2) + "%";
    document.querySelector('#star-rate').innerText = Number(target.value).toFixed(1)
    
    }
    
function check(){
	// score
	if ($("#rate").val() == 0){
		alert('평점을 입력해주세요');
		return;
		
	}
	// title
	console.log($('.js-email-string'))
	var title = $('.js-email-string').val();
	console.log(title);
	if (!title){
		alert('제목을 입력해주세요.');
		return;
	}
	// content 
	if (!$('#questionTextarea').val()){
		alert('문의 내용을 작성해주세요');
		return;
	}
	document.forms[0].submit();
}

</script>
</html>