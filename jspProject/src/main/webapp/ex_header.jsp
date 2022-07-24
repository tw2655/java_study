<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header -->
<header class="">

    <section>
        <h1><a class="" href="https://www.goodchoice.kr/" title="여기어때">여기어때</a></h1>
        <button type="button" class="btn_menu nav_open ">메뉴</button>
        <button type="button" class="btn_srch srch_open " style="right: 396px;">검색</button>
        <ul class="gnb_pc">
                                <li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
            <li><a href="https://www.goodchoice.kr/my/reserveList">예약내역</a></li>
            <li class="over">
                <button type="button"><span>더보기</span></button>
                <ul class="list_03" style="display: none; opacity: 1;">
                    <li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
                    <li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
                    <li><a href="https://www.goodchoice.kr/more/project">혁신 프로젝트</a></li>
                    <li><a href="https://www.goodchoice.kr/more/faq">자주 묻는 질문</a></li>
                    <li><a href="https://www.goodchoice.kr/more/inquiry">1:1 문의</a></li>
                    <li><a href="https://www.goodchoice.kr/more/terms">약관 및 정책</a></li>
                </ul>
            </li>

                <li class="over pic"><a href="https://www.goodchoice.kr/my/mypage"><img src="https://image.goodchoice.kr/profile/ico/ico_21.png" alt=""></a>
                    <ul class="list_04" style="display:none">
                        <li><b>GC1501958406</b></li>
                        <li><a href="https://www.goodchoice.kr/my/mypage">내정보</a></li>
                        <li><a href="https://www.goodchoice.kr/my/point" data-point="0">포인트<!-- span>0P</span --></a></li>
                        <li><a href="https://www.goodchoice.kr/my/coupon">쿠폰함<!-- span>0장</span --></a></li>
                        <li><a href="https://www.goodchoice.kr/my/reserveList">예약내역<!-- span>0건</span --></a></li>
                        <li><a href="https://www.goodchoice.kr/my/notiSetting">알림설정</a></li>
                                                    <li><button type="button" class="pop_logout_open">로그아웃</button></li>
                    </ul>
                </li>
                        </ul>

        <!-- Search -->
        <div class="srch_bar">
            <div class="wrap_inp">
                <input type="text" id="keyword" placeholder="지역, 숙소명" autocomplete="off">
                <button type="button" class="btn_srch" style="right: 396px;">검색</button>
            </div>
            <button class="btn_cancel" onclick="srch_close()">취소</button>
        </div>
        <!-- //Search -->

    </section>
</header>
	<!-- Bg Dimm -->
    <div class="bg_dimm" onclick="close_layer();">&nbsp;</div>
    <div class="bg_dimm_prevent">&nbsp;</div>

    <!-- 추천검색어 -->
    <div class="recommend_srch">
        <div class="scroll_srch">
            <div class="scroller">
                <div class="default" style="display:block">
                    <strong>추천 검색어</strong>
                    <ul></ul>
                </div>
                <!-- 연관검색어 -->
                <div class="chain" style="display: none;">
                    <ul></ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Mobile Menu -->
    <div class="gnb_opacity"><button class="btn_close">닫기</button></div>
    <div class="menu_wrap">

        <div class="menu">
            <div class="top">
                                    <!-- 비회원 -->
                    <div class="guest">
                        <div class="btn_join">
                            로그인 후 예약하시면<br>할인 쿠폰과 추가 혜택을 받을 수 있어요.<br>
                            <a href="https://www.goodchoice.kr/user/login"><span>로그인</span></a>
                        </div>
                        <div class="bot">
                            <!-- 스크립트 링크 -->
                            <a href="https://www.goodchoice.kr/user/login"><p>-<br><span>포인트</span></p></a>
                            <a href="https://www.goodchoice.kr/user/login"><p>-<br><span>쿠폰함</span></p></a>
                        </div>
                    </div>
                            </div>
            <!-- Iscroll -->
            <div class="scroll_nav">
                <div class="scroller">
                    <ul>
                        <li><a href="https://www.goodchoice.kr/">홈</a></li>
                        <li class="depth_2">
                            <button type="button" class="has_ul"><span>숙소유형</span></button>
                            <ul>
                                <li><a href="https://www.goodchoice.kr/product/home/1">모텔</a></li>
                                <li><a href="https://www.goodchoice.kr/product/search/2">호텔·리조트</a></li>
                                <li><a href="https://www.goodchoice.kr/product/search/3">펜션</a></li>
                                <li><a href="https://www.goodchoice.kr/product/search/6">게스트하우스</a></li>
                                <li><a href="https://www.goodchoice.kr/product/search/5">캠핑·글램핑</a></li>
                                <li><a href="https://www.goodchoice.kr/product/search/7">한옥 </a></li>
                            </ul>
                        </li>
                        <li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
                    </ul>
                                            <ul>
                            <li><a href="https://www.goodchoice.kr/user/login?returnUrl=my%2FreserveList">예약 내역</a></li>
                        </ul>
                                        <ul>
                        <li class="depth_2"><button type="button" class="has_ul"><span>더보기</span></button>
                            <ul>
                                <li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
                                <li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
                                <!-- <li><a href="https://www.goodchoice.kr/more/project">혁신 프로젝트</a></li> -->
                                <li><a href="https://www.goodchoice.kr/more/faq">고객문의</a></li>
                                <li><a href="https://www.goodchoice.kr/my/notiSetting">알림설정</a></li>
                                <li>
                                    <a href="https://q.egiftcard.kr/couponstatus/" target="_blank">
                                        여기어때 상품권 잔액 조회
                                    </a>
                                </li>
                                <li><a href="https://www.goodchoice.kr/more/terms">약관 및 정책</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="center">
                        <p>여기어때 고객행복센터</p>
                        <p><a href="tel:1670-6250">1670-6250</a></p>
                        <p>오전 9시 - 새벽 3시</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //Mobile Menu -->