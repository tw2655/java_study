<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@ include file="register_email_style.jsp" %>
<script type="text/javascript">
var req;
function printMsg(){
	var msg = document.getElementById('msg');
	msg.innerHTML = req.responseText;
}

function sendAuth(){
	req = new XMLHttpRequest();
	req.onreadystatechange = printMsg;
	req.open('post', 'sendAuth');
	req.send(document.getElementById('email').value);
}
function checkAuth(){
	req = new XMLHttpRequest();
	req.onreadystatechange = printMsg;
	req.open('post', 'checkAuth');
	req.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
	var number = document.getElementById('authNumber').value;
	var data = {authNumber:number};
	data = JSON.stringify(data);
	req.send(data);
}


</script>
<c:if test="${not empty msg2 }" >
	<script>alert("${msg2}");</script>
</c:if>

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
				<%@ include file="/WEB-INF/default/header.jsp" %>
				<!-- header -->
				<div class="contentsWrap">
					<div class="subHeader">
						<h2 class="title">회원가입</h2>
						<p class="desc">안전한 회원가입을 위해 본인인증을 진행해 주세요.</p>
					</div>
					<div>
						<div class="el-row">
							<div class="steps">
								<ul>
									<li class="stepItem current"><p class="label">본인인증</p></li>
									<li class="stepItem "><p class="label">정보입력</p></li>
									<li class="stepItem"><p class="label">가입완료</p></li>
								</ul>
							</div>
						</div>
					</div>
<!-- 						<form action="mailcheck" method="post"> -->
						<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">E-Mail</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text"  placeholder="E-Mail 입력" name='email' id="email"
													class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="sendAuth()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 인증번호 전송 </span>
											</button>
										</div>
										<div class="annotation">
										<h3>
											<font color="red" id="msg">${msg } </font>
										</h3>
											<span>※ 영문, 숫자를 조합해서 입력해 주세요.(4~12자)</span>
										</div>
										<!---->
									</div>
								</div>
									<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">인증번호</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text" name='authNum' placeholder='인증번호 입력' id="authNumber"
													class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="checkAuth()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 인증번호 확인 </span>
											</button>
										</div>
										
										<!---->
									</div>
								</div>
								<div class="footerBtnWrap">
						<div class="searchTrigger box maxW400 el-row">
							<button class="button apply" onclick ="location.href='mailcheck'">회원가입</button>
						</div>
					</div>
<!-- 					</form> -->
<!-- 					<tr> -->
<!-- 			<td align='right' height=40>E-Mail</td> -->
<!-- 			<td> -->
<!-- 				<input type=text name='email' placeholder='E-Mail 입력' id="email"/>  -->
<!-- 			</td> -->
<!-- 			<td colspan="2"><input type="button" value="인증번호 전송" onclick="sendAuth()"></td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td align='right'>인증번호</td> -->
<!-- 			<td> -->
<!-- 				<input type=text name='authNum' placeholder='인증번호 입력' id="authNumber"/>  -->
<!-- 			</td> -->
<!-- 			<td colspan="2"><input type="button" value="인증번호 확인" onclick="checkAuth()"></td> -->
<!-- 		</tr> -->
					
				
				<!-- footer -->
				<%@ include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer -->
	
	
</body>
</html>