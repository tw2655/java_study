<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<html lang="ko"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type">
    <meta name="csrf-name" content="yeogi_token">


	<!-- CSS -->
    <title>회원 가입 | 여기어때</title>
    <link rel="stylesheet" href="https://www.goodchoice.kr/css/common.css?rand=1654558361">
    <link rel="canonical" href="https://www.goodchoice.kr/user/join">
    <script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" src="${root }js/library/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="${root }js/service/register.js"></script>
    
    <script>
var _BASE_URL = 'https://www.goodchoice.kr/';
var _MOBILE = 'W';
var _KAKAOTALK_APP_KEY = 'f6ffb505bb11d7cc3584d443ce35f704';
var _FACEBOOK_APP_ID = '607467975974643';
</script>
    <script>(function(a,b,c){if(c in b&&b[c]){var d,e=a.location,f=/^(a|html)$/i;a.addEventListener("click",function(a){d=a.target;while(!f.test(d.nodeName))d    =d.parentNode;"href"in d&&(d.href.indexOf("http")||~d.href.indexOf(e.host))&&(a.preventDefault(),e.href=d.href)},!1)}})(document,window.navigator,"standalone")</script>
<meta http-equiv="origin-trial" content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://www.googleadservices.com/pagead/conversion/964418007/?random=1654672457425&amp;cv=9&amp;fst=1654672457425&amp;num=1&amp;label=6YMHCM_i81wQ17PvywM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=375603261&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2Fjoin&amp;ref=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2Flogin&amp;tiba=%ED%9A%8C%EC%9B%90%20%EA%B0%80%EC%9E%85%20%7C%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/802163829/?random=1654672457464&amp;cv=9&amp;fst=1654672457464&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa660&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2Fjoin&amp;ref=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2Flogin&amp;tiba=%ED%9A%8C%EC%9B%90%20%EA%B0%80%EC%9E%85%20%7C%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script></head>
<body class="pc">

<!-- Wrap -->
<div class="wrap show">

    <!-- Header -->
        <%@ include file="../header.jsp" %>


    <!-- Bg Dimm -->
    <div class="bg_dimm" onclick="close_layer();">&nbsp;</div>
    <div class="bg_dimm_prevent" style="display: none;">&nbsp;</div>

    <!-- 추천검색어 -->
    <div class="recommend_srch">
        <div class="scroll_srch">
            <div class="scroller">
                <div class="default" style="display:block">
                    <strong>추천 검색어</strong>
                    <ul></ul>
                </div>
                <!-- 연관검색어 -->
                <div class="chain">
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

    <!-- Custom Style -->
<style type="text/css">
	.validate_msg_label{
		margin-top:20px;
		display:inline-block;
		font-size: 13px;
		color:red;
	}
	.inp_type_2{
		padding: 0 10px;
	}
	#id_msg{font-size:13px; color:red; position:relative; top:-30px; left: 10px;}
	#pw_msg1{font-size:13px; display: block; width: 70px;color:red; position:relative; top:-15px; left: 330px;}
	#pw_msg2{font-size:13px; color:red; position:relative; top:-40px; left: 10px;}
	
</style>

<div class="layer_fix pop_login pop_mem_reserve fix_disable">
    <section>
    <form id="joinForm" action="registerService.jsp" autocomplete="off" method="post" novalidate="novalidate">
        <input type="hidden" name="yeogi_token" value="007bdeedea88cc0ebb95345a51a9b76e">

		<input type="hidden" name="privacy_auxiliary_policy">
		<input type="hidden" name="location_policy">
		<input type="hidden" name="marketing_acceptance">

        <div class="fix_title">
            <h1 class="page_head"><a href="https://www.goodchoice.kr/" title="여기어때">여기어때</a></h1>
        </div>
       

        <div class="join">
            <strong class="sub_title">회원가입</strong>
            <b>이메일 아이디</b>
            <div class="inp_type_2 form-errors"><!-- focus / err -->
                <input type="text" name="email" id="mail" placeholder="이메일 주소를 입력해주세요." class="valid" aria-invalid="false" onchange="idCheck()">
            </div>
				<span id="id_msg"></span>
            <b>이름</b>
            <div class="inp_type_2 form-errors"><!-- focus / err -->
                <input type="text" name="name" id="name" placeholder="이름을 입력해주세요." class="valid" aria-invalid="false" onblur="nameCheck()">
				<label id="gcuseremail_msg" class="validate_msg_label" style="color: red;"></label>
            </div>
            <span id="name_msg"></span>

            <b>비밀번호</b>
            <div class="inp_type_2 form-errors form-password-rule">
                <input type="password" name="pw" placeholder="비밀번호를 입력해주세요." id="pw" class="valid" aria-invalid="false" onblur="pwCheck()">
                <span id="pw_msg1"></span>
            </div>
            			<span id="pw_msg2"></span>
            

            <b>비밀번호 확인</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="confirmPw" placeholder="비밀번호를 입력해주세요." id="confirmPw" class="valid" aria-invalid="false" onblur="confirmCheck()">
            </div>
            <span id="co_msg"></span>
            
            <b>휴대폰 번호</b>
            <div class="inp_type_2 form-errors">
                <input type="text" name="phone" placeholder="전화 번호를 입력해주세요." id="mobile" class="valid" aria-invalid="false" onblur="mobileCheck()">
				<label id="new_pw_re_msg" class="validate_msg_label"></label>
            </div>
            <span id="mobile_msg"></span>

            <b>닉네임</b>
            <div class="inp_type_2 form-errors btn-add">
                <input type="text" id="nickname" name="nickname" required="" class="required valid" 
                placeholder="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" 
                data-rule-specialchar="true" aria-invalid="false" onblur="nicknameCheck()"></div>
            <span id="nickname_msg"></span>
            <button type="submit" id="joinBtn" class="btn_link gra_left_right_red btn_user_submit" 
            style="background-color: rgb(255, 0, 85); color: rgb(255, 255, 255); border: none;"><span>가입하기</span></button>
           
        </div>
    </form>
</section>



</div>








<style>
    /* layer_unfix 존재시 footer 숨김 */
    .mobile_appdown,
    header,
    footer{display:none !important}
</style>

    <!-- Footer -->
    <%@ include file="../footer.jsp" %>


</div>

<!-- 상단으로 -->
<button class="btn_go_top" onclick="moveTop();">상단으로</button>

<!-- //Wrap -->
<%@ include file="../script.jsp" %>
