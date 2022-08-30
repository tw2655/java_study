<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@ include file="register_style.jsp" %>
</head>
<body>
	<noscript data-n-head="ssr" data-hid="gtm-noscript" data-pbody="true">
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZPHVG&"
			height="0" width="0" style="display: none; visibility: hidden"
			title="gtm"></iframe>
	</noscript>
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
						<p class="desc">지금, 회원으로 가입하시면 바로 이용하실 수 있습니다.</p>
					</div>
					<div>
						<ul class="joinList">
							<li class="joinBox01"><h5>
									<span>내차사기</span> 홈서비스
								</h5>
								<p>
									K Car는 직영차만 판매합니다.<br> 온라인 즉시결제로 간편하게 원스탑 차량구매!<br>
									구매후 3일간 마음껏 타보고 결정하는 홈서비스로 취향에 맞게,<br> 상황에 맞게, 편리하게 구매하세요.
								</p></li>
							<li class="joinBox02"><h5>
									<span>내차팔기</span> 홈서비스
								</h5>
								<p>
									방문희망날짜에 맞춰 직접 찾아갑니다.<br> 고객님이 원하시는 방문일에 차량전문가가 방문해서<br>
									차량진단, 견적산출, 최종매각까지 어떤 수수료도 요구하지 않고<br> 편리하게 내차를 파실 수 있습니다.
								</p></li>
							<li class="joinBox03"><h5>
									<span>편리한 금융</span>서비스
								</h5>
								<p>
									저렴한 금리로 할부금이 확실하게 내려갑니다.<br> 한도조회부터 대출신청까지 온라인으로 한번에 해결!<br>
									서류준비 없는 편리한 전자계약 후 당일 차량 출고까지 한번에 끝내<br> 다릅니다.
								</p></li>
							<li class="joinBox04"><h5>
									<span>든든한보증</span>서비스
								</h5>
								<p>
									K Car Warranty로 내차 A/S 혜택이 길어집니다.<br> 수리비 부담 없이 보증혜택으로
									고장수리를 해결합니다.<br> 하루 1천원 대부터 시작하는 합리적인 보증비용으로 만나보세요.
								</p></li>
						</ul>
					</div>
					<div class="footerBtnWrap">
						<div class="searchTrigger box maxW400 el-row">
							<button class="button apply" onclick ="location.href='register_email'">회원가입</button>
						</div>
					</div>
				</div>
				<!-- footer -->
				<%@ include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer -->
			</div>
		</div>
	</div>
	
</body>
</html>