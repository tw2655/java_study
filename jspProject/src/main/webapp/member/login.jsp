<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="root" value="/" />
<html lang="ko"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type">
    <meta name="csrf-name" content="yeogi_token">

    
    <link rel="shortcut icon" href="//image.goodchoice.kr/images/web_v3/favicon_170822.ico" type="image/x-icon">

	<!-- CSS -->
    <title>로그인 | 여기어때</title>
    <link rel="stylesheet" href="https://www.goodchoice.kr/css/common.css?rand=1653988749">
    <link rel="canonical" href="https://www.goodchoice.kr/user/login">
    

    <script>(function(a,b,c){if(c in b&&b[c]){var d,e=a.location,f=/^(a|html)$/i;a.addEventListener("click",function(a){d=a.target;while(!f.test(d.nodeName))d    =d.parentNode;"href"in d&&(d.href.indexOf("http")||~d.href.indexOf(e.host))&&(a.preventDefault(),e.href=d.href)},!1)}})(document,window.navigator,"standalone")</script>
<meta http-equiv="origin-trial" content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://www.googleadservices.com/pagead/conversion/964418007/?random=1654253122033&amp;cv=9&amp;fst=1654253122033&amp;num=1&amp;label=6YMHCM_i81wQ17PvywM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=375603260&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=30&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2Flogin&amp;ref=http%3A%2F%2Flocalhost%3A8085%2F&amp;tiba=%EB%A1%9C%EA%B7%B8%EC%9D%B8%20%7C%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/802163829/?random=1654253122079&amp;cv=9&amp;fst=1654253122079&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=30&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa610&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2Flogin&amp;ref=http%3A%2F%2Flocalhost%3A8085%2F&amp;tiba=%EB%A1%9C%EA%B7%B8%EC%9D%B8%20%7C%20%EC%97%AC%EA%B8%B0%EC%96%B4%EB%95%8C&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script><style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style></head>
<body class="pc">

<!-- Wrap -->
<div class="wrap show">
    <%@ include file="../header.jsp" %>

    <!-- Header -->
   
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
                                <!-- <li><a href="https://www.goodchoice.kr/more${root }">혁신 프로젝트</a></li> -->
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

    <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
<!-- 로그인 pop_layer_w('pop_login') -->
<div class="layer_fix layer_unfix pop_login pop_mem_reserve">
    <section>
        <form id="loginForm" action="loginService.jsp" autocomplete="off" method="post" novalidate="novalidate">
            <input type="hidden" name="yeogi_token" value="43df7661df5403c852cefddcb70ac98a">
            <div class="fix_title">
                <strong class="logo"><a href="${root }/index.jsp">여기어때</a></strong>
            </div>
            
            
   <!-- 카카오톡 아이디 연동해서 로그인 -->
<script src = "//developers.kakao.com/sdk/js/kakao.min.js"></script>

 <button type="button" id="kakao-login-btn" class="btn_start btn_kakao" data-device-type="W"><span><i class="icon-ic_login_kakaotalk"></i>카카오톡으로 로그인</span></button>

<script type='text/javascript'>
 
Kakao.init('f33ec11d5202e0f16e451bd5f1b076b4'); //아까 카카오개발자홈페이지에서 발급받은 자바스크립트 키를 입력함
 
//카카오 로그인 버튼을 생성합니다. 
 
Kakao.Auth.createLoginButton({ 
    container: '#kakao-login-btn', 
    success: function(authObj) { 
           Kakao.API.request({
 
               url: '/v2/user/me',
 
               success: function(res) {
 
                     console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
 
                     console.log(res.kakao_account.email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
 
                     console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
                             
                 // res.properties.nickname으로도 접근 가능 )
                     console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
          
          var id = res.id;    //카카오톡 닉네임을 변수에 저장
          var kakaonickname = res.properties.nickname;    //카카오톡 닉네임을 변수에 저장
          var kakaoe_mail = res.kakao_account.email;    //카카오톡 이메일을 변수에 저장함
         
          
 
          window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) 
        		  + "/Project/member/kakaoLoginService.jsp?kakaonickname="+kakaonickname+"&kakaoe_mail="+kakaoe_mail+"&id="+id);
      
                   }
                 })
               },
               fail: function(error) {
                 alert(JSON.stringify(error));
               }
             });
</script>

<!-- <button type= "button" id= "loginBtn" ><img src="${root }/img/facebook.PNG"/></button> -->
<button type="button" id="loginBtn" class="btn_start btn_fb"><span>Facebook으로 로그인</span></button>


 
            <div id="access_token"></div>
            <div id="user_id"></div>
            <div id="name"></div>
            <div id="email"></div>
            <div id="gender"></div>
            <div id="birthday"></div>
            <div id="id"></div>            
            
<script>
function getUserData() {
    /* FB.api('/me', function(response) {
        document.getElementById('response').innerHTML = 'Hello ' + response.name;
        console.log(response);
    }); */
    FB.api('/me', {fields: 'name,email'}, function(response) {
        
        var facebookname = response.name;    //페이스북 아이디를 변수에 저장함
        var facebooke_mail = response.email;    //페이스북 이메일을 변수에 저장함
        
        
        window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) 
        		+ "/Project/member/facebookLoginService.jsp?facebookname="+encodeURI(facebookname)+"&facebooke_mail="+facebooke_mail);
 
    });
    
}
window.fbAsyncInit = function() {
    //SDK loaded, initialize it
    FB.init({
        appId      : '573391857528960', //페이스북 개발자 홈페이지에서 앱을 등록하고, 앱 id를 받아온다.
        cookie     : true,  // enable cookies to allow the server to access
                // the session
        xfbml      : true,  // parse social plugins on this page
        version    : 'v3.3'     // 페이스북 개발자 홈페이지에서 버전을 확인한 후 작성한다.
    });
  
    //check user session and refresh it
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {        //만약 정상적으로 실행되었다면 유저의 데이터를 가져온다.
            //user is authorized
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData(); 
            
        
            
        } else {
            //user is not authorized
        }
    });
};
  
//load the JavaScript SDK
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.com/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
//add event listener to login button
document.getElementById('loginBtn').addEventListener('click', function() {
    //do the login
    FB.login(function(response) {
        if (response.authResponse) {
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            //user just authorized your app
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
 
</script>

			<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
			
		
			<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<!-- 			<div id="naverIdLogin"></div> -->
<a id="naverIdLogin" class="btn_start btn_naver"><span><i class="icon-ic_login_naver"></i>네이버로 로그인</span></a>
			
			<!-- //네이버 아이디로 로그인 버튼 노출 영역 -->
			 
			<!-- 네이버 아이디로 로그인 초기화 Script -->
			<script type="text/javascript">
			    var naverLogin = new naver.LoginWithNaverId(
			        {
			            //클라이언트 id와 콜백 url (결과페이지)
			            clientId: "KmwKqMBFgMMFiMkfyFGj",
			            callbackUrl: "http://localhost:8085/Project/member/navercallback.jsp",
			            isPopup: false, /* 팝업을 통한 연동처리 여부 */
			            loginButton: {color: "green", type: 3, height: 56} /* 로그인 버튼의 타입을 지정 */
			        }
			    );
			    
			    /* 설정정보를 초기화하고 연동을 준비 */
			    naverLogin.init();
			</script>
           <p class="space_or"><span>또는</span></p>
            <div class="inp_type_1 ico_email form-errors"><!-- focus / err -->
            
                <input type="email" name="email" placeholder="이메일 주소" required="" class="required" value="" data-msg-required="이메일 주소를 입력해 주세요.">
            <button type="button" class="reset_val">초기화</button></div>
            <div class="inp_type_1 ico_pw form-errors">
                <input type="password" name="pw" placeholder="비밀번호" required="" class="required" data-msg-required="비밀번호를 입력해 주세요.">
            <button type="button" class="reset_val">초기화</button></div>
            <button class="btn_link gra_left_right_red" type="submit"><span>로그인</span></button>
                            <div class="link_half">
                    <div><a href="${root }/member/pwResetStart.jsp"><span>비밀번호 찾기</span></a></div>
                    <div><a href="registerCheck.jsp"><span>회원가입</span></a></div>
                </div>
            
            <!--
            <div class="layer_fix_footer">
                <p>
                    <a href="http://www.withinnovation.co.kr/" target="_blank">회사소개</a>|
                    <a href="https://www.goodchoice.kr/more/terms">이용약관</a>|
                    <a href="https://www.goodchoice.kr/more/terms/privacy">개인정보처리방침</a>|
                    <a href="https://www.goodchoice.kr/more/terms/teenager">청소년보호정책</a>
                </p>
                <p class="copyright">Copyright WITHINOVATION Corp. All rights reserved.</p>
            </div>
            -->
        </form>
    </section>
</div>


<style>
/* layer_unfix 존재시 footer 숨김 */
.mobile_appdown,
header,
footer{display:none !important}
</style>
<%@ include file="../footer.jsp" %>

    <!-- Footer -->
    
</div>

<!-- 상단으로 -->
<button class="btn_go_top" onclick="moveTop();">상단으로</button>

<!-- //Wrap -->

<%@ include file="../script.jsp" %>

<!-- Script -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('f33ec11d5202e0f16e451bd5f1b076b4'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: res => {
        	  const email = res.kakao_account.email;
        	  const name = res.properties.nickname;
        	  
        	 
        	  console.log(email);
        	  console.log(name);
        	  
        		$('#kakaoemail').val(email);
				$('#kakaoname').val(name);
				document.login_frm.submit();
        	  
          }
        	  
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
    
  }

</script>

</body></html>