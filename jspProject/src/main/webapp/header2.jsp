<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<header data-v-7b4768e4="" data-v-924c7d26="">
	<section data-v-7b4768e4="">
		<h1 data-v-7b4768e4="">
			<a href="${root }/index.jsp" title="여기어때" data-v-7b4768e4="">여기어때</a>
		</h1>
		<button type="button" class="btn_menu nav_open" data-v-7b4768e4="">메뉴</button>
		<button type="button" class="btn_srch srch_open" data-v-7b4768e4=""
			style="right: 396px;"></button>
		<ul class="gnb_pc" data-v-7b4768e4="">
			<li data-v-7b4768e4=""><a
				href="#" data-v-7b4768e4="">내주변</a></li>
			<li data-v-7b4768e4=""><a href="${root }/member/myReservation.jsp" class=""
				data-v-7b4768e4=""> 예약내역 </a></li>
			<li class="over" data-v-7b4768e4=""><button type="button"
					data-v-7b4768e4="">
					<span data-v-7b4768e4="">더보기</span>
				</button>
				<ul class="list_03" data-v-7b4768e4="">
					<li data-v-7b4768e4=""><a
						href="${root }/board/notification.jsp" data-v-7b4768e4="">공지사항</a></li>
					<li data-v-7b4768e4=""><a
						href="${root }/board/event.jsp" data-v-7b4768e4="">이벤트</a></li>
					<li data-v-7b4768e4=""><a
						href="${root }/board/inquiry.jsp" data-v-7b4768e4="">1:1
							문의</a></li>
				</ul></li>
			<li class="over pic" data-v-7b4768e4=""><a
				href="${root }/member/myPage.jsp" data-v-7b4768e4=""><img
					src="https://image.goodchoice.kr/profile/ico/ico_24.png" alt=""
					data-v-7b4768e4=""></a>
				<ul class="list_04" style="display: none" data-v-7b4768e4="">
					<li data-v-7b4768e4=""><b data-v-7b4768e4="">충렬탑협잡꾼</b></li>
					<li data-v-7b4768e4=""><a
						href="${root }/member/myPage.jsp" data-v-7b4768e4="">내정보</a></li>
					<li data-v-7b4768e4=""><a
						href="${root }/member/myPoint.jsp"
						data-point="<?php echo $myPopInfo['point']?>" data-v-7b4768e4="">포인트
					</a></li>
					<li data-v-7b4768e4=""><a href="${root }/member/myReservation.jsp" class=""
						data-v-7b4768e4=""> 예약내역 </a></li>
					<li data-v-7b4768e4=""><button type="button"
							class="pop_logout_open" data-v-7b4768e4="">로그아웃</button></li>
				</ul></li>
		</ul>
		<div class="srch_bar" data-v-7b4768e4="">
			<div class="wrap_inp" data-v-7b4768e4="">
				<input id="keyword" type="text" placeholder="지역, 숙소명"
					autocomplete="off" data-v-7b4768e4="">
				<button type="button" class="btn_srch" data-v-7b4768e4=""
					style="right: 396px;">검색</button>
			</div>
			<button onclick="srch_close()" class="btn_cancel" data-v-7b4768e4="">취소</button>
		</div>
	</section>
</header>
<div onclick="close_layer();" class="bg_dimm" data-v-924c7d26="">&nbsp;</div>
<div class="bg_dimm_prevent" data-v-924c7d26="">&nbsp;</div>
<div class="recommend_srch" data-v-924c7d26="">
	<div class="scroll_srch" data-v-924c7d26="">
		<div class="scroller" data-v-924c7d26="">
			<div class="default" style="display: block" data-v-924c7d26="">
				<strong data-v-924c7d26="">추천 검색어</strong>
				<ul data-v-924c7d26=""></ul>
			</div>
			<div class="chain" data-v-924c7d26="" style="display: none;">
				<ul data-v-924c7d26=""></ul>
			</div>
		</div>
		<div class="add_spin" data-v-924c7d26="">
			<div class="spinner" style="display: none;">
				<span></span>
			</div>
		</div>
	</div>
</div>
<div class="mobile_menu_wrap" data-v-d2acdd98="" data-v-924c7d26="">
	<div class="gnb_opacity" data-v-d2acdd98="" style="display: block;">
		<button class="btn_close" data-v-d2acdd98="">닫기</button>
	</div>
	<div class="menu_wrap" data-v-d2acdd98="" style="display: block;">
		<div class="menu" data-v-d2acdd98="" style="left: 0px; right: 56px;">
			<div class="top" data-v-d2acdd98="">
				<div class="member" data-v-d2acdd98="">
					<div class="mem" data-v-d2acdd98="">
						<span class="pic"
							style="background: url('https://image.goodchoice.kr/profile/ico/ico_24.png') 50% 50% no-repeat;"
							data-v-d2acdd98=""></span>
						<p class="info" data-v-d2acdd98="">충렬탑협잡꾼</p>
					</div>
					<div class="bot" data-v-d2acdd98="">
						<a href="https://www.goodchoice.kr/my/point" data-v-d2acdd98=""><p data-v-d2acdd98="">
								0P<br data-v-d2acdd98="">
								<span data-v-d2acdd98="">포인트</span>
							</p></a> <a href="https://www.goodchoice.kr/my/coupon" data-v-d2acdd98=""><p data-v-d2acdd98="">
								0장<br data-v-d2acdd98="">
								<span data-v-d2acdd98="">쿠폰함</span>
							</p></a>
					</div>
				</div>
			</div>
			<div class="scroll_nav" data-v-d2acdd98=""
				style="touch-action: none;">
				<div class="scroller" data-v-d2acdd98=""
					style="transform: translate(0px, 0px) translateZ(0px);">
					<ul data-v-d2acdd98="">
						<li data-v-d2acdd98=""><a href="https://www.goodchoice.kr/"
							data-v-d2acdd98="">홈</a></li>
						<li class="depth_2" data-v-d2acdd98=""><button type="button"
								class="has_ul" data-v-d2acdd98="">
								<span data-v-d2acdd98="">숙소유형</span>
							</button>
							<ul data-v-d2acdd98="">
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/product/home/1"
									data-v-d2acdd98="">모텔</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/product/search/2"
									data-v-d2acdd98="">호텔/리조트</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/product/search/3"
									data-v-d2acdd98="">펜션</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/product/search/6"
									data-v-d2acdd98="">게스트하우스</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/product/search/5"
									data-v-d2acdd98="">캠핑·글램핑</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/product/search/7"
									data-v-d2acdd98="">한옥 </a></li>
							</ul></li>
						<li data-v-d2acdd98=""><a
							href="https://www.goodchoice.kr/product/srp" data-v-d2acdd98="">내주변</a></li>
					</ul>
					<ul data-v-d2acdd98="">
						<li data-v-d2acdd98=""><a
							href="https://www.goodchoice.kr/my/reserveList"
							data-v-d2acdd98="">예약 내역</a></li>
						<li data-v-d2acdd98=""><a
							href="https://www.goodchoice.kr/my/mypage" data-v-d2acdd98="">내
								정보 관리</a></li>
					</ul>
					<ul data-v-d2acdd98="">
						<li class="depth_2" data-v-d2acdd98=""><button type="button"
								class="has_ul open" data-v-d2acdd98="">
								<span data-v-d2acdd98="">더보기</span>
							</button>
							<ul data-v-d2acdd98="" style="display: block;">
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/more/notice" data-v-d2acdd98="">공지사항</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/more/event" data-v-d2acdd98="">이벤트</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/more/project"
									data-v-d2acdd98="">혁신 프로젝트</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/more/faq" data-v-d2acdd98="">고객문의</a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/my/notiSetting"
									data-v-d2acdd98="">알림설정</a></li>
								<li data-v-d2acdd98=""><a
									href="https://q.egiftcard.kr/couponstatus/" target="_blank"
									data-v-d2acdd98=""> 여기어때 상품권 잔액 조회 </a></li>
								<li data-v-d2acdd98=""><a
									href="https://www.goodchoice.kr/more/terms" data-v-d2acdd98="">약관
										및 정책</a></li>
							</ul></li>
					</ul>
					<div class="center" data-v-d2acdd98="">
						<p data-v-d2acdd98="">여기어때 고객행복센터</p>
						<p data-v-d2acdd98="">
							<a href="tel:1670-6250" data-v-d2acdd98="">1670-6250</a>
						</p>
						<p data-v-d2acdd98="">오전 9시 - 새벽 3시</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


