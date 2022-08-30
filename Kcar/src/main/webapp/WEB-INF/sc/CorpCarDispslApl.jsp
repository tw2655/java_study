<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>법인차 매각 신청</title>
<%@include file="/WEB-INF/default/header.jsp"%>
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">
<meta data-n-head="ssr" data-hid="title" name="title"
	content="법인차 매각 신청">
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

				<div class="carSellWrap">
					<div class="carSellContainer">
						<div class="carSellContent">
							<div class="subHeader">
								<h1 class="title">
									<span class="wtNormal">회사 업무용 차량을</span> 팔 때도 K Car!
								</h1>
								<p class="desc">세금 계산서 발행, 소유권 변경 등 업무용 차량 판매의 모든 과정을 빠르고
									안전하게 진행해드립니다.</p>
							</div>
							<div class="roundBox">
								<ul class="carSellInfo">
									<li><span>법인차 매각 상담</span> <strong>1599-2551</strong></li>
									<li><span>이메일 접수</span> <strong>seongyun.park@kcar.com</strong></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="carSellContainer noBg">
						<div class="carSellContent">
							<div class="subHeader">
								<h1 class="title">
									법인차 판매 <span class="wtNormal">이렇게 진행돼요</span>
								</h1>
							</div>
							<ul class="carSellStep">
								<li><label>STEP1</label> <span><img
										src="/images/carSell/sell-car-01.svg" alt=""></span>
									<h5>판매 신청</h5>
									<p>
										전화 상담 접수 <br> 또는 이메일 접수
									</p></li>
								<li><label>STEP2</label> <span><img
										src="/images/carSell/sell-car-02.svg" alt=""></span>
									<h5>차량 평가</h5>
									<p>
										K Car 차량평가사가<br> 방문 후 성능검사
									</p></li>
								<li><label>STEP3</label> <span><img
										src="/images/carSell/sell-car-03.svg" alt=""></span>
									<h5>판매 견적서</h5>
									<p>
										정확한 진단에 따라<br> 차량 가격 산정
									</p></li>
								<li><label>STEP4</label> <span><img
										src="/images/carSell/sell-car-04.svg" alt=""></span>
									<h5>매각 대금 지급</h5>
									<p>
										계약서 작성 후<br> 당일 판매대금 입금
									</p></li>
								<li><label>STEP5</label> <span><img
										src="/images/carSell/sell-car-05.svg" alt=""></span>
									<h5>소유권 이전</h5>
									<p>
										명도 여부 파악 및<br> 명의자 이전
									</p></li>
								<li><label>STEP6</label> <span><img
										src="/images/carSell/sell-car-06.svg" alt=""></span>
									<h5>판매 완료</h5>
									<p>
										차량 인도 후<br> 세금계산서 자동 발급
									</p></li>
							</ul>
						</div>
					</div>
					<div class="carSellContainer noBg">
						<div class="carSellContent">
							<div class="subHeader">
								<h1 class="title">
									법인차 판매 신청 <span class="wtNormal">이런 점이 좋아요</span>
								</h1>
							</div>
							<ul class="carSellG">
								<li><span><img
										src="/images/carSell/icon-car-sell-corporation-01.svg" alt=""></span>
									<h5>
										투명하고<br> 합리적인 가격
									</h5>
									<p>K Car 차량평가사가 방문하여 객관적으로 차량의 성능을 검사하고, 차량의 견적 금액을 정확하게
										알려드려요.</p></li>
								<li><span><img
										src="/images/carSell/icon-car-sell-corporation-02.svg" alt=""></span>
									<h5>
										전화 한 통화로<br> 출장 매입 서비스
									</h5>
									<p>전화 또는 이메일로 문의해 주시면 전문 상담사가 자세하게 서비스 내용을 안내해 드려요.</p></li>
								<li><span><img
										src="/images/carSell/icon-car-sell-corporation-03.svg" alt=""></span>
									<h5>
										확실한 소유권 변경<br> 명의 이전 100%
									</h5>
									<p>계약서 작성 후 확인 절차를 거쳐 완전한 명도 여부를 파악하고 명의자 이전을 진행해 드려요.</p></li>
								<li><span><img
										src="/images/carSell/icon-car-sell-corporation-04.svg" alt=""></span>
									<h5>
										실거래 가격<br> 세금계산서 발행
									</h5>
									<p>계약서에 명시된 실거래 가격으로 세금계산서가 자동으로 발급되니까 간편해요.</p></li>
								<li><span><img
										src="/images/carSell/icon-car-sell-corporation-05.svg" alt=""></span>
									<h5>
										빠르고 안전한<br> 법인차 판매 보장
									</h5>
									<p>믿을 수 있는 K Car 차량평가사가 직접 방문하여 신속하고 안전하게 차를 판매해 드려요.</p></li>
								<li><span><img
										src="/images/carSell/icon-car-sell-corporation-06.svg" alt=""></span>
									<h5>
										상황에 맞게<br> 1:1 맞춤 서비스
									</h5>
									<p>내 상황에 맞추어 자세히 상담받고, 내가 원하는 장소에서 간편하게 차를 팔 수 있어요.</p></li>
							</ul>
							<div>
								<h2 class="title2">서류명</h2>
								<div class="table_ty01 mT40 AGCenter">
									<table>
										<caption>서류명</caption>
										<colgroup>
											<col style="width: 56.1rem;">
											<col style="width: 20.5rem;">
											<col style="width: 24.7rem;">
											<col style="width: auto;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">서류명</th>
												<th scope="col">개인</th>
												<th scope="col">개인사업자</th>
												<th scope="col">법인</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>자동차등록증</td>
												<td>O</td>
												<td>O</td>
												<td>O</td>
											</tr>
											<tr>
												<td>인감도장(법인인감도장)</td>
												<td>O</td>
												<td>O</td>
												<td>O</td>
											</tr>
											<tr>
												<td>사업자등록증 사본</td>
												<td>X</td>
												<td>O</td>
												<td>O</td>
											</tr>
											<tr>
												<td>법인인감증명서(자동차 매도용)</td>
												<td>X</td>
												<td>X</td>
												<td>O</td>
											</tr>
											<tr>
												<td>법인등기부 등본 사본(말소사항 포함)</td>
												<td>X</td>
												<td>X</td>
												<td>O</td>
											</tr>
											<tr>
												<td>세금계산서</td>
												<td>X</td>
												<td>O</td>
												<td>O</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div>
								<h2 class="title2">발급 기관</h2>
								<div class="table_ty01 mT40 AGCenter">
									<table>
										<caption>서류명</caption>
										<colgroup>
											<col style="width: 40.2rem;">
											<col style="width: 36.3rem;">
											<col style="width: auto;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">서류명</th>
												<th scope="col">발급 기관</th>
												<th class="noTh"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>인감증명서<br> 주민등록등본<br> 자동차세완납증명서
												</td>
												<td>동 행정복지 센터</td>
												<td rowspan="4" class="listTd"><ul class="listDot">
														<li>외국인 고객님의 경우, 외국인 등록증이 없다면 거소사실증명서와 여권을 준비하셔야 합니다.</li>
														<li>거소사실증명서에는 국내 거주 보증인 2명을 기재해 주세요.</li>
													</ul></td>
											</tr>
											<tr>
												<td>외국인인감증명서</td>
												<td>외국인 등록관청</td>
											</tr>
											<tr>
												<td>법인인감증명서(자동차 매도용)</td>
												<td>등기소</td>
											</tr>
											<tr>
												<td>양도증명서</td>
												<td>차량등록사무소, 구청</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<%@include file="/WEB-INF/default/footer.jsp"%>
				</div>


			</div>
		</div>
	</div>

</body>
</html>