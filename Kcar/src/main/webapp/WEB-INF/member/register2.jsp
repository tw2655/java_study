<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D"
	class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@ include file="register_style.jsp"%>
<style>
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

.searchTrigger .button.apply:disabled {
	background: #d8dee8;
	border-color: #d8dee8;
}
</style>

</head>
<body>
	<script type="text/javascript" src="register.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		var req;
		function isExistId() {
			req = new XMLHttpRequest();
			req.onreadystatechange = printMsg;
			req.open('post', 'isExistId');
			req.send(document.getElementById('m_email').value);
		}

		function printMsg() {
			var msg2 = document.getElementById('msg2');
			msg2.innerHTML = req.responseText;
		}
		function daumPost() {

			new daum.Postcode({
				oncomplete : function(data) {
					var addr = "";
					// R == 도로명 주소, J == 지번 주소
					if (data.userSelectedType == "R")
						addr = data.roadAddress;
					else {
						addr = data.jibunAddress;
					}
					document.getElementById('m_zipcode').value = data.zonecode; // 우편번호
					document.getElementById('m_addr1').value = addr;
					document.getElementById('m_addr2').focus();
				}
			}).open();

		}
	
	</script>
	
	<noscript data-n-head="ssr" data-hid="gtm-noscript" data-pbody="true">
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZPHVG&"
			height="0" width="0" style="display: none; visibility: hidden"
			title="gtm"></iframe>
	</noscript>

	<script>
		alert('${msg}');
	</script>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app" class="Container">
				<div>
					<div class="el-dialog__wrapper popup fullPopup xnone active"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="딜러 약관 동의"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">딜러 약관 동의</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div class="footerBtnWrap">
										<div class="searchTrigger box multBtn el-row">
											<button class="button apply">확인</button>
										</div>
									</div></span>
							</div>
						</div>
					</div>
				</div>
				<!-- header -->
				<%@ include file="/WEB-INF/default/header.jsp"%>
				<!-- header -->
				<form class="el-form"  method="post" action="register2" id="form__wrap">
					
				<div class="contentsWrap" style="">
						<div class="subHeader">
							<h2 class="title">회원가입</h2>
							<p class="desc">안전한 회원가입을 위해 본인인증을 진행해 주세요.</p>
						</div>

						<div class="pageContents">
							<div>
								<div class="el-row">
									<div class="steps">
										<ul>
											<li class="stepItem pass"><p class="label">본인인증</p></li>
											<li class="stepItem current"><p class="label">정보입력</p></li>
											<li class="stepItem"><p class="label">가입완료</p></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="sectionHeader">
								<h3 class="title">정보를 입력해 주세요.</h3>
							</div>
							<div class="formWrap">
								<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="el-input el-input--suffix">
											<div class="titLabel">이름</div>

											<c:choose>
												<c:when test="${empty sessionScope.kakao_email }">
													<input type="text" name="m_name" id="m_name"
														onblur="nameCheck()" placeholder="이름"
														class="el-input__inner"> <br>
												</c:when>
												<c:otherwise>
													<input type="text" name="m_name" id="m_name" value="${sessionScope.kakao_name }"
														onblur="nameCheck()" placeholder="이름"
														class="el-input__inner"> <br>
												</c:otherwise>
											</c:choose>
											<!---->
											<!---->
											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>
								<br> <span id="name_msg"></span>
								<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">이메일</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text" autocomplete="off" placeholder="아이디 입력"
													name="m_email" id="m_email" onchange="idCheck()"
													class="el-input__inner">

												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="isExistId()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 중복확인 </span>
											</button>
										</div>
										<div class="annotation">

											<font color="red" id="msg2">${msg2 } </font> <span
												id="id_msg"></span><br>

										</div>
										<!---->
									</div>
								</div>
								<div class="el-form-item passArea">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">비밀번호</div>
										<div class="el-row">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="password" autocomplete="off" id="m_pw"
													name="m_pw" onblur="pwCheck()" placeholder="비밀번호 입력"
													class="el-input__inner">
												<!---->
												<span class="el-input__suffix"><span
													class="el-input__suffix-inner"> <!----> <!----> <!---->
														<!---->
												</span> <!----></span>
												<!---->
												<!---->
											</div>
										</div>
										<span id="pw_msg1"></span>
										<div class="annotation el-row">
											<span id="pw_msg2"></span>

										</div>
										<!---->
									</div>
								</div>
								<div class="el-form-item passArea">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">비밀번호 확인</div>
										<div class="el-input el-input--suffix">
											<!---->
											<input type="password" autocomplete="off" name="m_pwOk"
												id="m_pwOk" onblur="confirmCheck()" placeholder="비밀번호 다시 입력"
												class="el-input__inner">
											<!---->
											<span class="el-input__suffix"><span
												class="el-input__suffix-inner"> <!----> <!----> <!---->
													<!---->
											</span> <!----></span>
											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>
								<br> <span id="co_msg"></span>
								<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="el-input el-input--suffix">
											<div class="titLabel">휴대폰번호</div>
											<div class="flexbox el-row">

												<!---->
												<input type="text" autocomplete="off" id="m_tel"
													name="m_tel" onblur="mobileCheck()" class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>

										</div>
										<!---->
									</div>
								</div>
								<br> <span id="mobile_msg"></span>
								<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">우편 번호</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text" name='m_zipcode' id="m_zipcode"
													readonly="readonly" class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="daumPost()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 우편번호 검색 </span>
											</button>
										</div>

										<!---->
									</div>
								</div>
								<div class="el-form-item passArea">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">주소</div>
										<div class="el-input el-input--suffix">
											<!---->
											<input type="text" name='m_addr1' id="m_addr1"
												readonly="readonly" class="el-input__inner">
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
										<div class="titLabel">상세주소</div>
										<div class="el-input el-input--suffix">
											<!---->
											<input type="text" name='m_addr2' id="m_addr2"
												class="el-input__inner">
											<!---->

											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>



								<div class="termsArea">
									<div class="roundCheck">
										<h3 class="subTitle3">약관 동의</h3>
										<div class="termsCheckWrap">
											<div class="item">
												<div id='result'></div>
												<div class ="input__check">
												<input class="form-check-input" onClick="agreeCheck(this.form)" type="checkbox"
													name="agree" id="termsOfService"> <label
													class="form-check-label" for="termsOfService"><span></span>
													이용약관 동의(필수) <!----></label></div>
											</div>
											<div class="item">
											<div class ="input__check">
												<input class="form-check-input" onClick="agreeCheck(this.form)" type="checkbox"
													name="agree" id="privacyPolicy"> <label
													class="form-check-label" for="privacyPolicy"><span></span>
													개인정보 수집 및 이용 동의(필수)<!----></label></div>

											</div>
											<div class="item">
											<div class ="input__check">
												<input class="form-check-input" onClick="agreeCheck(this.form)" type="checkbox"
													name="agree" id="allowPromotions"> <label
													class="form-check-label" for="allowPromotions"><span></span>
													환불약관 동의(필수)<!----></label></div>

											</div>
											<div class="item">

												<input class="form-check-input" type="checkbox"
													name="check4" id="check4"> <label
													class="form-check-label" for="check4"><span></span>
													SMS/이벤트 등 푸시알림(선택)<!----></label>
											</div>
											<div class="item">

												<input class="form-check-input" type="checkbox"
													name="check5" id="check5"> <label
													class="form-check-label" for="check5"><span></span>
													이메일 수신(선택)<!----></label>
											</div>



										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="footerBtnWrap">
							<div class="searchTrigger box maxW400 el-row">
								<button class="button apply" name = "checkButton" disabled>회원
									가입</button>
							</div>
						</div>
					</div>

				</form>
				<script>
	function agreeCheck(frm)
	{
//	    if (frm.checkButton.disabled==true)
//	     frm.checkButton.disabled=false
//	    else
//	     frm.checkButton.disabled=true
		
	var chks= document.querySelectorAll("[name='agree']:checked") //네임 선택

	console.log(chks.length) //체크된 박스의 개수
	if(chks.length >= 3){
		frm.checkButton.disabled=false
	}else{
		frm.checkButton.disabled=true
	}
	}
				
	</script>
				
				<div class="el-dialog__wrapper popup fullPopup hauto"
					style="display: none;">
					<div role="dialog" aria-modal="true" aria-label="이용약관(필수)"
						class="el-dialog" style="margin-top: 15vh;">
						<div class="el-dialog__header">
							<span class="el-dialog__title">이용약관(필수)</span>
							<button type="button" aria-label="Close"
								class="el-dialog__headerbtn">
								<i class="el-dialog__close el-icon el-icon-close"></i>
							</button>
						</div>
						<!---->
						<div class="el-dialog__footer">
							<span class="dialog-footer"><div></div></span>
						</div>
					</div>
				</div>
				<div class="el-dialog__wrapper popup fullPopup"
					style="display: none;">
					<div role="dialog" aria-modal="true"
						aria-label="개인정보 수집 및 이용 동의(필수)" class="el-dialog"
						style="margin-top: 15vh;">
						<div class="el-dialog__header">
							<span class="el-dialog__title">개인정보 수집 및 이용 동의(필수)</span>
							<button type="button" aria-label="Close"
								class="el-dialog__headerbtn">
								<i class="el-dialog__close el-icon el-icon-close"></i>
							</button>
						</div>
						<!---->
						<div class="el-dialog__footer">
							<span class="dialog-footer"><div></div></span>
						</div>
					</div>
				</div>
				<div class="el-dialog__wrapper popup fullPopup hauto"
					style="display: none;">
					<div role="dialog" aria-modal="true" aria-label="환불약관(필수)"
						class="el-dialog" style="margin-top: 15vh;">
						<div class="el-dialog__header">
							<span class="el-dialog__title">환불약관(필수)</span>
							<button type="button" aria-label="Close"
								class="el-dialog__headerbtn">
								<i class="el-dialog__close el-icon el-icon-close"></i>
							</button>
						</div>
						<!---->
						<!---->
					</div>
				</div>
				<div class="el-dialog__wrapper popup fullPopup hauto"
					style="display: none;">
					<div role="dialog" aria-modal="true" aria-label="마케팅 활용/수신(선택)"
						class="el-dialog" style="margin-top: 15vh;">
						<div class="el-dialog__header">
							<span class="el-dialog__title">마케팅 활용/수신(선택)</span>
							<button type="button" aria-label="Close"
								class="el-dialog__headerbtn">
								<i class="el-dialog__close el-icon el-icon-close"></i>
							</button>
						</div>
						<!---->
						<div class="el-dialog__footer">
							<span class="dialog-footer"><div></div></span>
						</div>
					</div>
				</div>
				<div class="el-dialog__wrapper popup confirm noTitle"
					style="display: none;">
					<div role="dialog" aria-modal="true" aria-label="noTitle"
						class="el-dialog" style="margin-top: 15vh;">
						<div class="el-dialog__header">
							<span class="el-dialog__title">noTitle</span>
							<button type="button" aria-label="Close"
								class="el-dialog__headerbtn">
								<i class="el-dialog__close el-icon el-icon-close"></i>
							</button>
						</div>
						<!---->
						<div class="el-dialog__footer">
							<span class="dialog-footer"><div></div></span>
						</div>
					</div>
				</div>
			</div>
			<!-- footer -->
			<%@ include file="/WEB-INF/default/footer.jsp"%>
			<!-- footer -->
		</div>
	</div>
	</div>


</body>
</html>