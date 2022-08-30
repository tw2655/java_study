<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>내차팔기 홈서비스</title>
<%@include file="/WEB-INF/default/header.jsp"%>
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">


<style type="text/css">
.image {
	width: 155px;
	height: 100px
}

.newRentImg img {
	width: 218px;
	height: 140px
}

.useNwca {
	background-color: #f9fafb;
	color: #16171d !important
}

.useNwcaTit {
	color: #b70f28 !important
}

.subNameTitle {
	font-size: 1.3rem;
	font-weight: 400;
	color: #999ea1;
	line-height: 1.8rem
}

span .img {
	width: 232px;
	height: 105px
}
</style>

</head>
<body class="" style="">
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
				<div class="carSellHome contWrap">
					<div class="hsBanner keyVisual"
						style="background-image: url(&quot;/images/carSell/bg_sell_main1.jpg&quot;);">
						<p class="desc">
							<span>50만 명이 선택한</span>
						</p>
						<div class="title pT8">
							K Car 내차팔기 <br>홈서비스
							<p class="btnWrap">
							<a href="/HomeSvcSimptRcp " onClick="window.open('/HomeSvcSimptRcp','간편 신청','resizable,height=1000,width=800'); return false;">	<button type="button"
									class="el-button cta redFill el-button--default" id="mkt_simpt">
						
									<span> 간편 신청 </span>
								</button>
								</a>
			
							</p>
						</div>
					</div>
					<div class="pageContents">
						<div class="sectionInner el-row">
							<div class="eventBannerArea scrollObserver">
								<div class="eventVisual">
									<p>당일 판매하시면 10만원 백화점 상품권 드려요</p>
									<img src="/images/sell/ssgPay.jpg" alt="">
								</div>
								<div class="eventCondition">
									<ul>
										<li><span class="flag">대상고객</span>
											<p class="desc">차량평가사 방문 당일에 판매하신 고객</p></li>
										<li><span class="flag">상품안내</span>
											<p class="desc">신세계 상품권 모바일교환권(10만원)</p></li>
										<li><span class="flag">행사기간</span>
											<p class="desc">2022년 4월 1일(금) ~ 이벤트 종료일</p></li>
										<li><span class="flag">지급방법</span>
											<p class="desc">차량 판매금액 입금 후 최대 7일(영업일)안에 모바일교환권을 문자메시지로
												발송</p></li>
									</ul>
									<p class="etctxt">※ 문자메시지를 받은 뒤 모바일교환권 유효기간(60일) 이내에 교환하셔야
										합니다.</p>
								</div>
							</div>
						</div>
						<div class="sectionInner el-row">
							<div class="BGHeader">
								<h2>
									<strong>K Car는</strong><br>뭐가 다른가요?
								</h2>
								<div class="cont type2">
									<ul class="panelLists2">
										<li><div class="desc">
												<strong>빠르고 간편한 내차팔기</strong>
												<p>
													K Car가 차량 판매의 모든 과정을 직접 대행하니까 <br>방문 견적부터 소유권 이전까지 하루
													만에 끝나요.
												</p>
											</div></li>
										<li><div class="desc">
												<strong>집 앞으로 찾아오는 간편한 방문 견적</strong>
												<p>
													제주도, 강원도는 물론 전국 어디든지 <br>K Car 차량평가사가 찾아오니까 편리해요.
												</p>
											</div></li>
										<li><div class="desc">
												<strong>견적 비용 없이 편안히 이용</strong>
												<p>
													견적을 확인 후 판매하지 않아도 돼요! <br>견적비용이 없어 맘 편히 이용할 수 있어요.
												</p>
											</div></li>
										<li><div class="desc">
												<strong>정확한 견적으로 믿을 수 있어 안심</strong>
												<p>
													K Car 차량평가사가 직접 차량을 진단하니까 <br> 받은 견적 그대로 믿고 팔 수 있어요.
												</p>
											</div></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="sectionInner animation el-row">
							<div class="BGHeader step">
								<h2>
									<strong>하루 만에 내차팔기</strong><br>이렇게 진행돼요.
								</h2>
								<div class="cont">
									<ul class="horizontalStep">
										<li><div class="iconWrap">
												<div class="icon"></div>
												<div class="desc">
													<span class="flag">STEP1</span> <strong>내차팔기신청</strong>
													<p>
														차량번호와 연락처 <br>입력 후 신청
													</p>
												</div>
											</div></li>
										<li><div class="iconWrap">
												<div class="icon"></div>
												<div class="desc">
													<span class="flag">STEP2</span> <strong>신청 차량정보 확인</strong>
													<p>
														상담원이 전화 상담으로 <br>내용 확인
													</p>
												</div>
											</div></li>
										<li><div class="iconWrap">
												<div class="icon"></div>
												<div class="desc">
													<span class="flag">STEP3</span> <strong>방문 희망일정 확인</strong>
													<p>
														차량 평가사와 <br>전화로 방문 일정 조율
													</p>
												</div>
											</div></li>
										<li><div class="iconWrap">
												<div class="icon"></div>
												<div class="desc">
													<span class="flag">STEP4</span> <strong>차량 평가사 방문</strong>
													<p>
														K Car 차량 평가사가 방문하여 <br>무료 견적
													</p>
												</div>
											</div></li>
										<li><div class="iconWrap">
												<div class="icon"></div>
												<div class="desc">
													<span class="flag">STEP5</span> <strong>계약서 작성</strong>
													<p>
														계약서 작성 후 <br>당일 판매대금 입금
													</p>
												</div>
											</div></li>
										<li><div class="iconWrap">
												<div class="icon"></div>
												<div class="desc">
													<span class="flag">STEP6</span> <strong>내차팔기완료</strong>
													<p style="margin-bottom: 1rem;">차량 인도 및 명의 이전</p>
													<p class="ft14" style="cursor: pointer;">
														소유권 이전 확인 방법<i class="el-icon-arrow-right"></i>
													</p>
												</div>
											</div></li>
									</ul>
									<div class="stepVisual">
										<ul class="guideTxt type2">
											<li><strong>상담 운영 시간</strong>
												<p>평일 09:00~19:00, 토요일/일요일 09:00~18:00 (법정공휴일 휴무)</p></li>
											<li><strong>차량평가사 방문 가능 시간</strong>
												<p>평일 09:00~18:00 (법정공휴일 휴무/일요일 휴무)</p></li>
											<li class="dotlist"><p class="dot">K Car 차량평가사 방문 시
													매각하실 차량과 소유권 이전 서류를 전달해주시면 내차팔기 전 과정이 익일 이내 처리됩니다. (주말·공휴일
													및 K Car 오산경매장, 제주 지역 매입 차량 제외)</p>
												<p class="dot">소유권 이전 서류: 자동차등록증, 자동차세완납증명서, 신분증,
													인감증명서(자동차 매도용), 인감도장 (대리인인 경우 위임장 및 신분증)</p></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="sectionInner countArea el-row">
							<div class="BGHeader">
								<h2>
									<strong>지금까지 <span id="" class="pointC numCount">604,321</span>명의
										고객님이
									</strong><br>내차팔기 홈서비스를 이용하셨어요.
								</h2>
								<button type="button" class="el-button moreBtn el-button--text">
									<!---->
									<!---->
									<span> 더보기 </span>
								</button>
							</div>
							<div class="cont">
								<ul class="cardLists">
									<li><a><div class="imgbox">
												<img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20227/내차팔기 03_태지훈_크루즈 1.4터보_0725eJrmTf8KXaTkpGC9EjQx.jpg"
													alt="고마운 크룽아, 좋은 주인 만나렴!">
											</div>
											<div class="postDesc">
												<span class="tag">쉐보레(GM대우) 크루즈</span> <br>
												<div class="postTit">
													<p style="word-break: break-all;">고마운 크룽아, 좋은 주인 만나렴!</p>
												</div>
												<p class="desc" style="word-break: break-all;">올해 초 계약한
													신차가 예상보다 빠르게 출고되어 그 동안 탔던 크루즈를 판매하게 되었습니다. 빠른 판매를 위해 부랴부랴
													여러 앱을 검색하고 후보군을 정했는데요. 결론적으로 케이카에서 가장 높은 가격을 불러주셔서 바로 판매를
													결정했답니다. 차량평가사님이 오시기 전 이미 두 군데 앱을 통해 견적을 받아봤기에 시세보다 높은 가격이라는
													걸 알 수 있었죠. 인감증명서를 보내고 1시간 후 입금 완료 문자가 왔고, 몇 시간 후 탁송기사님께 미리
													준비해둔 서류와 자동차키를 전달드리며 차린이의 내차팔기 체험은 끝이 났습니다. 그 동안 소중한 추억을
													함께해준 고마운 크룽아, 좋은 주인 만나거라!</p>
												<span class="postDate">2022.07.25</span>
											</div></a></li>
									<li><a><div class="imgbox">
												<img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20227/내차팔기 02_유애현_니로 하이브리드_07257ptkAdRtKahrPpVtmxle.jpg"
													alt="63개월 니로를 잘 팔았어요">
											</div>
											<div class="postDesc">
												<span class="tag">기아 니로</span> <br>
												<div class="postTit">
													<p style="word-break: break-all;">63개월 니로를 잘 팔았어요</p>
												</div>
												<p class="desc" style="word-break: break-all;">아끼던 첫 차
													니로 하이브리드를 케이카에 보내주었습니다. 평생 탈 맘으로 올해 1월 타이어도 갈았는데 어쩌다 보니 집에
													차가 두 대나 되어 5년 간 아껴온 니로를 팔기로 결정할 수밖에 없었네요. 금요일에 내차팔기 홈서비스
													신청을 했거든요. 혹시 견적 봐주실 수 있는지.. 금요일 오후라 안될수도 있다고 했는데 차량평가사님께서
													오셨어요! 받은 견적이 나쁘지 않았고, 당일 견적 받고 계약하면 상품권도 덤으로 받을 수 있어서 케이카에
													최종 매각하기로 결정했답니다. 신청부터 방문견적, 소유권 이전까지 쉽고 빠르게 끝났네요.</p>
												<span class="postDate">2022.07.25</span>
											</div></a></li>
									<li><a><div class="imgbox">
												<img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20227/내차팔기 01_김하람_트랙스 LT코어_0725JKPF6YWBTUqiWfluyRLa.jpg"
													alt="비교 끝에 선택한 케이카">
											</div>
											<div class="postDesc">
												<span class="tag">쉐보레(GM대우) 트랙스</span> <br>
												<div class="postTit">
													<p style="word-break: break-all;">비교 끝에 선택한 케이카</p>
												</div>
												<p class="desc" style="word-break: break-all;">2년 간 탔던
													트랙스를 신차 구매하며 팔게 되었습니다. 케이카와 다른 곳을 함께 비교했는데, 극명한 차이가 있어서 두
													군데 비교 후 케이카에 최종 매각하게 되었네요. 제가 처음 중고차를 파는 상황이고 더군다나 제 명의가 아닌
													배우자 명의로 진행하다보니 준비해야할 서류가 복잡했습니다. 케이카 화곡직영점 이*준 차량평가사님께서 제가
													미리 준비해야 할 서류와 절차에 대해 꼼꼼히 안내해주셨고, 송금도 최대한 빨리 진행되도록 중간중간 준비
													상황에 대해 먼저 챙겨 물어봐주시는 믿음직한 모습을 보여주었습니다. 결론적으로 케이카에 좋은 가격,
													믿음직한 서비스로 아끼는 차량을 잘 판매했네요. 다음에도 차를 팔 일이 있다면 고민 없이 케이카를
													선택하겠습니다.</p>
												<span class="postDate">2022.07.25</span>
											</div></a></li>
									<li><a><div class="imgbox">
												<img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20227/review20227119nBJ8RN.jpg"
													alt="빠른 일 처리에 친절함까지 최고!">
											</div>
											<div class="postDesc">
												<span class="tag">쉐보레(GM대우) 말리부</span> <br>
												<div class="postTit">
													<p style="word-break: break-all;">빠른 일 처리에 친절함까지 최고!</p>
												</div>
												<p class="desc" style="word-break: break-all;">몇 군데 견적을
													받아봤으나 케이카가 우리 말리부를 제일 좋게 평가해주고 일 처리도 시원시원해서 케이카에 매각하기로
													결정했습니다. 납득되지 않는 감가가 없어서 더욱 좋았네요. 연락을 드리면 바로바로 응답 주셔서 좋았고요.
													담당해주신 케이카 양산직영점 김*영 차량평가사님 감사합니다! 또 판매할 일이 있으면 케이카로 할거예요~
													직장 동료들이나 주위 분들에게도 케이카 강력 추천 중입니다.</p>
												<span class="postDate">2022.07.11</span>
											</div></a></li>
									<li><a><div class="imgbox">
												<img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20227/review20227119tNqIys.jpg"
													alt="최고 높은 가격으로 잘 팔았어요">
											</div>
											<div class="postDesc">
												<span class="tag">기아 레이</span> <br>
												<div class="postTit">
													<p style="word-break: break-all;">최고 높은 가격으로 잘 팔았어요</p>
												</div>
												<p class="desc" style="word-break: break-all;">사고 한 번 없이
													우리 네 식구의 든든한 발이 되어준 레이. 이제 아이들도 크고 짐이 많아지면서 잘 타지 않게 되었어요.
													아끼며 탔던 차인 만큼 가치를 잘 알아봐줄 곳으로 보내고 싶었기에 타 업체 2곳에도 견적을 받아봤지만
													최종적으로 가장 높은 가격을 제시해준 케이카에 판매하게 됐습니다. 차량평가사님이 오셔서 차를 5분 정도
													살피시고 입금, 탁송, 명의이전 모든 처리를 정말 일사천리로 진행해 주셨어요. 괜히 이상한 걸로 트집잡으며
													깎고.. 이런 것 없이 정말 깔끔!하게 입금도 되어 거래를 마쳤습니다. 새로 구입할 차량도 케이카에서
													검색하는 중이에요^^ 우리 가족 지켜줄 다음 차량도 잘 부탁 드립니다 케이카!</p>
												<span class="postDate">2022.07.11</span>
											</div></a></li>
									<li><a><div class="imgbox">
												<img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20226/review202261016vSWQ5F.jpg"
													alt="15년을 함께한 TG, 고마웠다">
											</div>
											<div class="postDesc">
												<span class="tag">현대 그랜저 TG</span> <br>
												<div class="postTit">
													<p style="word-break: break-all;">15년을 함께한 TG, 고마웠다</p>
												</div>
												<p class="desc" style="word-break: break-all;">타던 차를
													판매해본 경험이 없어서 절차나 방법을 고민하던 차에 K Car 내차팔기 홈서비스를 알게 되었습니다. 접수
													후 방문 날짜 확정까지 반나절 만에 끝났고, 약속일에 차량평가사님이 오셔서 꼼꼼히 차량을 확인해주셨네요.
													15년을 탔고 주행거리 29만 킬로가 넘는 차량이라 높은 가격을 기대하기는 어려울 거라 하셨지만 그래도
													많은 신경을 써주셨습니다. 원래는 다른 곳에도 의뢰를 해볼까 했지만 직접 방문하여 업무 처리도 신속하게
													해주시는 것을 보고 케이카에 그냥 당일 매각을 결정했네요. 대금도 통장으로 바로 입금되었습니다^^ 방문
													견적에서 매각까지 단 하루 만에 정말 끝났네요. 간편한 업무처리와 고객의 마음까지 헤아려 애써주신 K
													Car 담당자께도 고마움을 전합니다.</p>
												<span class="postDate">2022.06.10</span>
											</div></a></li>
								</ul>
							</div>
						</div>
						<div class="sectionInner el-row">
							<div class="faqWrap">
								<h2>자주 하는 질문</h2>
								<button type="button"
									class="el-button allMoreBtn el-button--text">
									<!---->
									<!---->
									<span> 전체보기 </span>
								</button>
								<div role="tablist" aria-multiselectable="true"
									class="el-collapse faqList">
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-7371"
											aria-describedby="el-collapse-content-7371">
											<div role="button" id="el-collapse-head-7371" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>내차팔기 홈서비스의 특징은 무엇인가요?
												</span><i class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-7371"
											id="el-collapse-content-7371" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														<p class="mB8">
														<p>1. 고객님이 원하는 장소와 시간에 맞추어 K Car 차량평가사가 방문하니까 간편합니다.</p>
														<p>2. K Car에서 내차팔기의 모든 과정을 책임지고 직접 진행하니까 안심할 수 있습니다.</p>
														<p>3. 방문부터 견적, 입금, 판매 완료까지 하루 만에 끝나므로 차량을 빠르게 판매할 수
															있습니다.</p>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-9223"
											aria-describedby="el-collapse-content-9223">
											<div role="button" id="el-collapse-head-9223" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>토요일이나 공휴일에도 내차팔기
													홈서비스를 신청할 수 있나요?</span><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-9223"
											id="el-collapse-content-9223" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														<p class="mB8">
														<p>토요일이나 공휴일에도 K Car 홈페이지 또는 앱으로 내차팔기 홈서비스를 신청할 수
															있습니다.</p>
														<p>
															<br>
														</p>
														<p>단, 공휴일에 내차팔기 홈서비스를 신청하면 다음 영업일에 서비스가 안내됩니다.</p>
														<p>
															<br>
														</p>
														<p>공휴일에는 K Car 고객센터가 운영되지 않기 때문이니 양해해 주시기 바랍니다.&nbsp;</p>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-4708"
											aria-describedby="el-collapse-content-4708">
											<div role="button" id="el-collapse-head-4708" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>판매하는 차량의 자동차 보험은 언제
													해지해야 하나요?</span><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-4708"
											id="el-collapse-content-4708" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														<p class="mB8">
														<p>차량을 판매하신 후 K Car로 소유권 이전이 완료되면 변경된 자동차등록증을 고객님께
															전달드립니다.</p>
														<p>
															<br>
														</p>
														<p>이 후, 가입하신 보험사를 통하여 보험해지를 진행하시면 됩니다.&nbsp;</p>
														<p>
															<br>
														</p>
														<p>※ 보험사에서 증명서류 요청시 K Car 명의로 변경된 자동차등록증 사본을 제출해주세요.</p>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-3521"
											aria-describedby="el-collapse-content-3521">
											<div role="button" id="el-collapse-head-3521" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>소유권 이전에 필요한 서류는
													무엇인가요?</span><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-3521"
											id="el-collapse-content-3521" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														<p class="mB8">
														<p>소유권 이전에 필요한 서류는 아래와 같습니다.</p>
														<p>
															<br>
														</p>
														<p>※ 필요서류</p>
														<p>- 자동차등록증, 자동차세완납증명서, 신분증, 인감증명서(자동차 매도용), 인감도장</p>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-3866"
											aria-describedby="el-collapse-content-3866">
											<div role="button" id="el-collapse-head-3866" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>내차팔기 홈서비스를 신청하면 내 차
													가격은 어떻게 산정되고, 견적 비용은 얼마가 드나요?</span><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-3866"
											id="el-collapse-content-3866" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														<p class="mB8">
														<p>K Car 차량평가사가 고객님이 원하는 장소에 방문하여 차량을 꼼꼼히 진단하고, 투명한
															기준에 따라 가격을 산정합니다.</p>
														<p>
															<br>
														</p>
														<p>방문견적 비용은 무료입니다.</p>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-134"
											aria-describedby="el-collapse-content-134">
											<div role="button" id="el-collapse-head-134" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>내차팔기 홈서비스를 신청하면
													차량평가사는 언제 방문하나요?</span><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-134"
											id="el-collapse-content-134" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														<p class="mB8">
														<p>고객님과 일정을 조율한 뒤 빠르면 신청 당일, 늦어도 3일 안에 방문합니다.&nbsp;</p>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="sectionInner el-row">
							<div class="warningBox">
								<h3 class="tit">꼭! 알아두세요</h3>
								<ul class="guideTxt ft14">
									<li>차량 진단 시, 중대한 결함이 있거나 정상 거래가 어려운 차량은 내차팔기 홈서비스 이용이 제한될
										수 있습니다.<br> (예: 엔진, 변속기 등 중요 부품에 결함이 있는 차량, 침수 차량, 주행거리
										조작 차량, 차대번호 조작 또는 재타각 이력이 있는 차량)
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="fixBarArea">
						<ul class="fixwrap">
							<li><span class="eyebrow">50만 명이 선택한</span>
								<h2 class="tit">내차팔기 홈서비스</h2></li>
							<li><div class="btnWrap">
									<button type="button" class="el-button cta el-button--default"
										id="mkt_simpt">
										<!---->
										<!---->
										<span> 간편 신청 </span>
									</button>
									<!---->
								</div></li>
						</ul>
					</div>
					<div class="carSellPop">
						<div>
							<div class="el-dialog__wrapper popup fullPopup active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="소유권 이전 확인방법"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">소유권 이전 확인방법</span>
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
					</div>
					<div>
						<div class="el-dialog__wrapper popup popCenter "
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="내차팔기 고객후기"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">내차팔기 고객후기</span>
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
					<%@include file="/WEB-INF/default/footer.jsp"%>
				</div>

			</div>
		</div>
	</div>

</body>
</html>