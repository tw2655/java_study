<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type">
	<!-- <meta name="csrf-name" content="<?php echo $csrf_name; ?>" /> -->
	<meta name="description" content="전국 호텔, 펜션, 모텔부터 워터파크, 놀이공원, 아쿠아리움까지 최저가 할인 예약">
	
	<link rel="preload" href="/common.css" as="style">
	<link rel="stylesheet" href="/jspProject/css/common.css">
	<link rel="shortcut icon" href="https://image.goodchoice.kr/images/web_v3/favicon_170822.ico" type="image/x-icon">
	
	<!-- CSS -->
	<title>취향대로 머물다 여기어때</title>
	<!-- <link rel="canonical" href="<?php echo $url; ?>" /> -->
	<script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script type="text/javascript" src="/js/library/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="/js/library/jquery.cookie.js"></script>
	<%@ include file="roomReservation.jsp" %>
</head>
<body class="mobile">
<script>var deviceWidth=window.innerWidth;document.body.className=deviceWidth>1023?"pc":"mobile"</script>
<div id="__nuxt">
<div id="__layout">
<div data-v-924c7d26="" data-v-38903b51="">
<div class="wrap show" data-v-924c7d26="">
	<div data-v-f785cca6="" data-v-924c7d26="">
	<div id="content" data-v-f785cca6="">
		<div class="reserve" data-v-f785cca6="">
			<!-- pc버전 오른쪽 결제 정보 -->
			<div class="right" data-v-33033856="" data-v-f785cca6="">
				<section class="info" data-v-33033856="">
					<p class="name" data-v-33033856=""><strong data-v-33033856="">숙소이름</strong>명동 뉴서울호텔</p>
					<p data-v-33033856=""><strong data-v-33033856="">객실타입/기간</strong>스탠다드 트윈 / 대실</p>
				</section>
				<section class="total_price_pc" data-v-33033856="">
					<p data-v-33033856="">
						<strong data-v-33033856=""><b data-v-33033856="">총 결제 금액</b>(VAT포함)</strong>
						<span class="in_price" data-v-33033856="">45,000원</span>
					</p>
					<ul data-v-33033856="">
						<li data-v-33033856="">해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
						<li data-v-33033856="">
							결제완료 후 <span data-v-33033856="">예약자 이름</span>으로 바로<span data-v-33033856="">체크인</span> 하시면 됩니다.
						</li>
					</ul>
				</section>
				<button type="button" class="btn_pay gra_left_right_red" data-v-33033856="">결제하기</button>
			</div>
			<!-- //pc버전 오른쪽 결제 정보 -->
			
			<div class="left" data-v-f785cca6="">
				<section class="time_drag" data-v-b5c15754="" data-v-f785cca6="">
					<h3 style="margin-top: 0" data-v-b5c15754="">이용 정보</h3>
					<div class="title" data-v-b5c15754="">
						<strong data-v-b5c15754="">
							이용시간<em class="use_time" data-v-b5c15754=""></em>
							<span data-v-b5c15754="">최대<b class="dayuse" data-v-b5c15754="">5</b> 시간 이용가능</span>
						</strong>
					</div>
					<div id="usetime" class="owl-carousel owl-loaded owl-drag" data-v-b5c15754="">
						<div class="owl-stage-outer">
							<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 338px; padding-left: 16px; padding-right: 16px;">
								<div class="owl-item active" style="width: 74.4px; margin-right: 2px;">
									<button data-v-b5c15754="" data-time="2022-06-03T20:30:00" class="item">20:30</button>
								</div>
								<div class="owl-item active" style="width: 74.4px; margin-right: 2px;">
									<button data-v-b5c15754="" data-time="2022-06-03T21:00:00" class="item">21:00</button>
								</div>
								<div class="owl-item active" style="width: 74.4px; margin-right: 2px;">
									<button data-v-b5c15754="" data-time="2022-06-03T21:30:00" class="item">21:30</button>
								</div>
								<div class="owl-item active" style="width: 74.4px; margin-right: 2px;">
									<button data-v-b5c15754="" data-time="2022-06-03T22:00:00" disabled="disabled" class="item disable">22:00</button>
								</div>
							</div>
						</div>
						<div class="owl-nav disabled">
							<div class="owl-prev">prev</div>
							<div class="owl-next">next</div>
						</div>
						<div class="owl-dots disabled">
							<div class="owl-dot active"><span></span></div>
						</div>
					</div>
				</section>
				<div data-v-35b6e85e="" data-v-f785cca6="">
					<section class="info_chkin" data-v-35b6e85e="">
						<h3 data-v-35b6e85e="">예약자 정보</h3> 
						<strong data-v-35b6e85e="">예약자 이름</strong>
						<p class="inp_wrap remove" data-v-35b6e85e="">
							<input type="text" name="userName" placeholder="체크인시 필요한 정보입니다." maxlength="20" value="김지영" data-v-35b6e85e="">
						</p>
						<p data-show="name" class="alert_txt" style="visibility: hidden" data-v-35b6e85e="">
							한글, 영문, 숫자만 입력 가능. (문자 사이 공백은 1칸만 입력 가능)
        				</p>
        				<div data-v-bf7fb84e="" data-v-35b6e85e="">
        					<strong class="mt_09" data-v-bf7fb84e="">휴대폰 번호</strong>
        					<div class="phone_confirm" data-v-bf7fb84e="">
        						<div class="input-box" data-v-bf7fb84e="">
        							<input type="tel" name="userPhone" placeholder="체크인시 필요한 정보입니다." maxlength="13" value="" class="input" data-v-bf7fb84e="">
        							<div data-v-bf7fb84e="" class="cancel-icn-touch">
        								<svg data-v-bf7fb84e="" height="20" width="20" xmlns="http://www.w3.org/2000/svg" class="cancel-icn">
        									<path data-v-bf7fb84e="" d="M10 17.5a7.5 7.5 0 110-15 7.5 7.5 0 010 15zm0-8.914L7.172 5.757 5.757 7.172 8.586 10l-2.829 2.828 1.415 1.415L10 11.414l2.828 2.829 1.415-1.415L11.414 10l2.829-2.828-1.415-1.415z"></path>
       									</svg>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<section class="price_wrap" data-v-3ce5aaac="" data-v-f785cca6="">
					<h3 data-v-3ce5aaac="">할인 수단 선택</h3>
					<div class="product-amount" data-v-3ce5aaac=""><strong data-v-3ce5aaac="">구매총액</strong><b data-v-3ce5aaac="">45,000원</b></div> 
            		<!-- 포인트 사용 -->
             		<div class="discount-container" data-v-3ce5aaac="">
             			<div class="discount-header" data-v-3ce5aaac="">
             				<button class="discount-method-button" data-v-3ce5aaac="">포인트 사용 0P</button>
             				<div class="discount-point-amount" data-v-3ce5aaac="">
	             				<div class="value-total" data-v-3ce5aaac="">
	             					<input type="text" value="0" class="point-input" data-v-3ce5aaac=""><span data-v-3ce5aaac="">P</span>
	             				</div>
             				</div>
           				</div>
        			</div>
       			</section>
       			<!-- 모바일 버전 결제 정보 -->
       			<section class="price_wrap total_price" data-v-f785cca6="">
       				<p data-v-f785cca6="">
       					<strong data-v-f785cca6=""><b data-v-f785cca6="">총 결제 금액</b>(VAT포함)</strong>
       					<span class="in_price_app" data-v-f785cca6="">45,000원</span>
					</p>
					<ul data-v-f785cca6="">
						<li data-v-f785cca6="">해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
						<li data-v-f785cca6="">결제완료 후 <span data-v-f785cca6="">예약자 이름</span>으로 바로<span data-v-f785cca6="">체크인</span> 하시면 됩니다</li>
					</ul>
				</section> 
                        
				<button type="button" class="btn_pay gra_left_right_red" data-v-f785cca6="">
                    결제하기
                </button>
			</div>
		</div>
	</div> 
	<!-- 결제 버튼 눌렀을때 뜨는 modal창 -->
	<div id="pay_background" data-v-f785cca6="">
		<div id="pay_box" data-v-f785cca6=""><a href="#" data-v-f785cca6="">X</a>
			<iframe id="pay_frame" style="position: relative;background: #fff;overflow: auto;" data-v-f785cca6=""></iframe>
		</div>
	</div>
	<div data-v-6de7d288="" data-v-f785cca6="">
		<div data-v-6de7d288="" class="layer pop_title reserve_chk">
			<strong data-v-6de7d288="">예약내역 확인</strong>
				<div data-v-6de7d288="" class="content">
					<div data-v-6de7d288="">
						<p data-v-6de7d288="" class="name ellip">명동 뉴서울호텔</p>
						<p data-v-6de7d288="" class="name">스탠다드 트윈/대실</p>
						<ul data-v-6de7d288="" id="refund_policy">
							<li data-v-6de7d288="" class="dot_txt"><b data-v-6de7d288="" style="color: red;">취소 및 환불이 불가</b>합니다.</li>
							<li data-v-6de7d288="" class="dot_txt">예약 후 15분 이내 고객행복센터로 취소 요청 시 100% 환불 가능합니다.</li>
						</ul>
					</div>
				</div>
				<div data-v-6de7d288="" class="btn">
					<button data-v-6de7d288="" onclick="close_layer();">취소</button>
					<button data-v-6de7d288="">동의 후 결제</button>
				</div>
			</div>
			<div data-v-6de7d288="" class="layer pop_title pop_price">
				<strong data-v-6de7d288="">구매 총액</strong>
				<div data-v-6de7d288="" class="content">
					<div data-v-6de7d288="">
						<div data-v-6de7d288="" class="iscroll_price">
							<ul data-v-6de7d288="" class="scroller"></ul>
						</div>
						<p data-v-6de7d288=""></p>
					</div>
				</div>
				<div data-v-6de7d288="" class="btn btn_center">
					<button data-v-6de7d288="" onclick="close_layer();">확인</button>
				</div>
			</div>
			<div data-v-6de7d288="" class="business_pop">
				<div data-v-6de7d288="" class="list">
					<h4 data-v-6de7d288="">숙박서비스 제공업체 리스트</h4>
					<button data-v-6de7d288="" onclick="list_close();" class="btn_close">닫기</button>
					<div data-v-6de7d288="">
						<ul data-v-6de7d288="" id="ajax_ad_list"></ul> 
						<div data-v-6de7d288="" id="pagination"></div>
					</div>
				</div>
			</div>
		</div> 
		</div> 
        
        
        <%@ include file="../footer.jsp" %>
            
            </div> <button onclick="moveTop();" class="btn_go_top" data-v-924c7d26="" style="display: none;">상단으로</button> <div style="display: none" data-v-924c7d26=""><span itemscope="itemscope" itemtype="http://schema.org/Organization" data-v-924c7d26=""><link itemprop="url" href="https://www.goodchoice.kr" data-v-924c7d26=""> <a itemprop="sameAs" href="https://www.facebook.com/goodchoiceofficial" data-v-924c7d26=""></a> <a itemprop="sameAs" href="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere" data-v-924c7d26=""></a> <a itemprop="sameAs" href="https://itunes.apple.com/kr/app/id884043462" data-v-924c7d26=""></a> <a itemprop="sameAs" href="https://post.naver.com/withinnovation" data-v-924c7d26=""></a> <a itemprop="sameAs" href="https://www.youtube.com/channel/UCLI1HOVJdhWdVl9pT__g2Zw" data-v-924c7d26=""></a></span></div> 
       </div></div></div>
            
            
		<%@ include file="../script.jsp" %>
</body>
</html>