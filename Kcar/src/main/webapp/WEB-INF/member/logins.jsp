
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@include file="loginstyle.jsp"%>
<style type="text/css">
input[type="checkbox"] {
	display: none;
}

input[type='checkbox']+label span {
	display: inline-block;
	width: 25px;
	height: 25px;
	background: url('/images/common/checkbox-single-default.svg') no-repeat
		0 0px/contain;
}

input[type='checkbox']:checked+label span {
	background: url('/images/common/checkbox-single-checked.svg') no-repeat
		0 0px/contain;
}
</style>
</head>
<body>


	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app">
				<div class="contentsWrap">
					<div class="logListWrap">
						<h1 class="kcarLogo" style="cursor: pointer;">
							<a href="home">K car logo</a>
						</h1>
						<div class="userLogin">
							<div class="el-row">
								<div class="tabsCol02 el-tabs el-tabs--top">
									<div class="el-tabs__header is-top">
										<div class="el-tabs__nav-wrap is-top">
											<div class="el-tabs__nav-scroll">
												<div role="tablist" class="el-tabs__nav is-top"
													style="transform: translateX(0px);">
													<div class="el-tabs__active-bar is-top"
														style="width: 295px; transform: translateX(0px);"></div>
													<div id="tab-tab01" aria-controls="pane-tab01" role="tab"
														aria-selected="true" tabindex="0"
														class="el-tabs__item is-top is-active">회원</div>
													<div id="tab-tab02" aria-controls="pane-tab02" role="tab"
														tabindex="-1" class="el-tabs__item is-top">비회원 조회</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="el-tabs__content">
										<div role="tabpanel" id="pane-tab01"
											aria-labelledby="tab-tab01" class="el-tab-pane">
											<div class="loginWrap">
												<form class="el-form loginForm" action="logins" onsubmit="return frm_check();"
													method="post">
													<div class="el-form-item idArea">
														<!---->
														<div class="el-form-item__content">
															<div class="titLabel">아이디</div>
															<div class="el-input el-input--suffix">
																<!---->
																<input type="text" id="m_email" name="m_email"  value="${cookieid.value }"
																	placeholder="아이디 입력" class="el-input__inner">
																<!---->
																<!---->
																<!---->
																<!---->
															</div>
															<!---->
														</div>
													</div>
													<div class="el-form-item passArea">
														<!---->
														<div class="el-form-item__content">
															<div class="titLabel">비밀번호</div>
															<div class="el-input el-input--suffix">
																<!---->
																<input type="password" id="m_pw" name="m_pw"
																	placeholder="비밀번호 입력" class="el-input__inner">
																<!---->
																<span class="el-input__suffix"><span
																	class="el-input__suffix-inner"> <!----> <!---->
																		<!----> <!---->
																</span> <!----></span>
																<!---->
																<!---->
															</div>
															<!---->
														</div>
													</div>
													<div class="roundCheck el-row">
														<div class="item">
															<div class="input__check">
																<input class="form-check-input" type="checkbox"
																	name="agree" id="termsOfService"> <label
																	class="form-check-label" for="termsOfService"><span></span>
																	로그인 상태 유지 <!----></label>
															</div>
														</div>

														<div class="item">
															<div class="input__check">
																<input class="form-check-input" type="checkbox"
																	name="agree" id="rememberId"> <label
																	class="form-check-label" for="rememberId"><span></span>
																	아이디 저장 <!----></label>
															</div>
														</div>

													</div>
													<div class="btnLogIn">
														<div class="searchTrigger box el-row">
															<button class="button apply" id="loginbtn">로그인</button>
														</div>
													</div>
												</form>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
 
 
<script type="text/javascript">
     $(function() {
         
           fnInit();
         
     });
     
     function frm_check(){
         saveid();
     }
 
    function fnInit(){
        var cookieid = getCookie("rememberId");
        console.log(cookieid);
        if(cookieid !=""){
            $("input:checkbox[id='rememberId']").prop("checked", true);
            $('#m_email').val(cookieid);
        }
        
    }    
 
    function setCookie(name, value, expiredays) {
        var todayDate = new Date();
        todayDate.setTime(todayDate.getTime() + 0);
        if(todayDate > expiredays){
            document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
        }else if(todayDate < expiredays){
            todayDate.setDate(todayDate.getDate() + expiredays);
            document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
        }
        
        
        console.log(document.cookie);
    }
 
    function getCookie(Name) {
        var search = Name + "=";
        console.log("search : " + search);
        
        if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
            offset = document.cookie.indexOf(search);
            console.log("offset : " + offset);
            if (offset != -1) { // 쿠키가 존재하면 
                offset += search.length;
                // set index of beginning of value
                end = document.cookie.indexOf(";", offset);
                console.log("end : " + end);
                // 쿠키 값의 마지막 위치 인덱스 번호 설정 
                if (end == -1)
                    end = document.cookie.length;
                console.log("end위치  : " + end);
                
                return unescape(document.cookie.substring(offset, end));
            }
        }
        return "";
    }
 
    function saveid() {
        var expdate = new Date();
        if ($("#rememberId").is(":checked")){
            expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
            setCookie("rememberId", $("#m_email").val(), expdate);
            }else{
           expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
            setCookie("rememberId", $("#m_email").val(), expdate);
             
        }
    }

</script>

												<div class="el-row">
													<div class="loginOptions">
														<p>
															<a href="register" class="link_more"> 회원가입 </a>
														</p>
														<p>
															<a href="#" class="link_more"> 아이디 찾기 </a> <a
																href="find_pw_email" class="link_more"> 비밀번호 찾기 </a>
														</p>
													</div>
												</div>
												<div class="el-row">
													<div class="snsActions">
														<div class="el-divider el-divider--horizontal">
															<div class="el-divider__text is-center">간편로그인</div>
														</div>
														<div align="center" style="margin: 30px;">
														
														<a href="https://kauth.kakao.com/oauth/authorize?
																client_id=3149b002ff0c86f42cbcaba90c8bed3e&
																redirect_uri=http://localhost/kakaoLogin&
																response_type=code&prompt=login" style="padding: 20px;">
				<img src="/images/user/icon-login-kakao.svg" style="width: 40px;height: 40px;"width="111" alt="카카오 로그인 버튼" /></a>
				
				
				
				
				
									<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
			
		
											<!-- 네이버아이디로로그인 버튼 노출 영역 -->
								<!-- 			<div id="naverIdLogin"></div> -->
								<a id="naverIdLogin" class="btn_start btn_naver" style="padding: 20px;"><span><i class="icon-ic_login_naver" ></i>네이버로 로그인</span></a>
								
											
											<!-- //네이버 아이디로 로그인 버튼 노출 영역 -->
											 
											<!-- 네이버 아이디로 로그인 초기화 Script -->
											<script type="text/javascript">
											    var naverLogin = new naver.LoginWithNaverId(
											        {
											            //클라이언트 id와 콜백 url (결과페이지)
											            clientId: "KmwKqMBFgMMFiMkfyFGj",
											            callbackUrl: "http://localhost/naverCallback",
											            isPopup: false, /* 팝업을 통한 연동처리 여부 */
											            loginButton: {color: "green", type:1, height: 40, width: 40} /* 로그인 버튼의 타입을 지정 */
											        }
											    );
											    
											    /* 설정정보를 초기화하고 연동을 준비 */
											    naverLogin.init();
											</script> 
															
															
															
														</div>
													</div>
												</div>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true" id="pane-tab02"
											aria-labelledby="tab-tab02" class="el-tab-pane"
											style="display: none;">
											<div class="nonMemberWrap">
												<p>
													<strong class="heading03">비회원 고객님은 휴대폰이나 아이핀으로<br>본인인증을
														하실 수 있습니다.
													</strong>
												</p>
												<ul>
													<li><a class="loginSell"><span>내차팔기 조회</span></a></li>
													<li><a class="loginBuy"><span>내차사기 조회</span></a></li>
													<li><a class="loginRent"><span>렌트 조회</span></a></li>
													<li><a class="loginCeriti"><span>보증수리 접수내역</span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="bannerWrap el-row" style="cursor: pointer;">
									<div
										class="bannerSlides swiper-container swiper-container-initialized swiper-container-horizontal">
										<div class="swiper-wrapper"
											style="transition-duration: 0ms; transform: translate3d(-1180px, 0px, 0px);">
											<div
												class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
												data-swiper-slide-index="2" style="width: 590px;">
												<a
													href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_38&amp;adgroupid=adg_kcaradmin_20220607_1&amp;adid=adi_kcaradmin_20220607_3"><div
														class="banner">
														<img
															src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_login_banner_03WfUxXT1M2DSwS8FD3P8W.png">
													</div></a>
											</div>
											<div class="swiper-slide swiper-slide-prev"
												data-swiper-slide-index="0" style="width: 590px;">
												<a
													href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_38&amp;adgroupid=adg_kcaradmin_20220607_1&amp;adid=adi_kcaradmin_20220607_1"><div
														class="banner">
														<img
															src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/로그인_img_01G2XWcUNI0QRdWUiAr0J3.png">
													</div></a>
											</div>
											<div class="swiper-slide swiper-slide-active"
												data-swiper-slide-index="1" style="width: 590px;">
												<a
													href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_38&amp;adgroupid=adg_kcaradmin_20220607_1&amp;adid=adi_kcaradmin_20220607_2"><div
														class="banner">
														<img
															src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_login_banner_02KAWdaGLFA2jvYNrrAnOv.png">
													</div></a>
											</div>
											<div class="swiper-slide swiper-slide-next"
												data-swiper-slide-index="2" style="width: 590px;">
												<a
													href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_38&amp;adgroupid=adg_kcaradmin_20220607_1&amp;adid=adi_kcaradmin_20220607_3"><div
														class="banner">
														<img
															src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_login_banner_03WfUxXT1M2DSwS8FD3P8W.png">
													</div></a>
											</div>
											<div
												class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
												data-swiper-slide-index="0" style="width: 590px;">
												<a
													href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_38&amp;adgroupid=adg_kcaradmin_20220607_1&amp;adid=adi_kcaradmin_20220607_1"><div
														class="banner">
														<img
															src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/로그인_img_01G2XWcUNI0QRdWUiAr0J3.png">
													</div></a>
											</div>
										</div>
										<div class="swiper-pagination swiper-pagination-bullets">
											<span class="swiper-pagination-bullet"></span><span
												class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
												class="swiper-pagination-bullet"></span>
										</div>
										<span class="swiper-notification" aria-live="assertive"
											aria-atomic="true"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="el-dialog__wrapper popup fullPopup hauto"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="로그인 상태 유지 소개"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">로그인 상태 유지 소개</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<!---->
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm W600"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="휴면회원 해제 알림"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">휴면회원 해제 알림</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup popCenter hauto active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="비회원 조회"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">비회원 조회</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box maxW400 el-row">
													<button class="button apply">신청내역 조회</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>