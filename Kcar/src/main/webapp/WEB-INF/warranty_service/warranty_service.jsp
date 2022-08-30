<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>K Car Warranty</title>
<%@ include file="warranty_style.jsp" %>

</head>
<body class="" style="">
	
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
				<header id="header" class="kcarHeader">
					<div class="gnbArea">
						<div class="topNavi">
							<h1 class="kcarHeaderLogo">
								<a>대한민국 No.1 직영중고차 KCar</a>
							</h1>
							<button class="menuAll">
								<span class="_hidden">전체메뉴</span>
							</button>
							<ul role="menubar"
								class="el-menu-demo gnb el-menu--horizontal el-menu">
								<li role="menuitem" aria-haspopup="true" class="el-submenu"><div
										class="el-submenu__title"
										style="border-bottom-color: transparent;">
										내차팔기 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
									</div></li>
								<li role="menuitem" aria-haspopup="true" class="el-submenu"><div
										class="el-submenu__title"
										style="border-bottom-color: transparent;">
										내차사기 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
									</div></li>
								<li role="menuitem" aria-haspopup="true" class="el-submenu"><div
										class="el-submenu__title"
										style="border-bottom-color: transparent;">
										렌트 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
									</div>
									<div class="el-menu--horizontal gnbSubMenu typeCenter1"
										style="display: none;">
										<ul role="menu"
											class="el-menu el-menu--popup el-menu--popup-bottom-start">
											<div class="menuTitArea">
												<strong class="menuTit">렌트</strong>
											</div>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">중고차렌트</li>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">렌트특가</li>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">신차렌트</li>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">기사포함렌트</li>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">렌트지점</li>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">렌트일반정비소</li>
											<li role="menuitem" tabindex="-1"
												class="el-menu-item menuItem">렌트사고정비소</li>
										</ul>
									</div></li>
								<li role="menuitem" aria-haspopup="true" class="el-submenu"><div
										class="el-submenu__title"
										style="border-bottom-color: transparent;">
										금융 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
									</div></li>
							</ul>
							<div class="navLink">
								<a><span>브랜드 인증관</span></a> <a><span>전국 직영점</span></a> <a><img
									src="/images/common/icon-clock.png" alt=""><span>위클리
										특가</span></a>
							</div>
						</div>
						<div class="utilArea">
							<div class="utilMenu">
								<a><span>로그인</span></a> <a><span>회원가입</span></a>
							</div>
							<div class="searchArea">
								<div class="el-input topinput">
									<input type="text" autocomplete="off" placeholder="차량을 검색하세요."
										class="el-input__inner">
								</div>
								<button class="searchBtn">
									<span>차량검색</span>
								</button>
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup gnbAllMenu"
						style="z-index: 2012; display: none;">
						<div role="dialog" aria-modal="true" aria-label="dialog"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<div class="header_inner">
									<h1 class="header_logo">
										<a>대한민국 No.1 직영중고차<strong>K Car</strong></a>
									</h1>
								</div>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<div class="el-dialog__body">
								<div class="gnbMenu">
									<div class="leftMenu">
										<div class="firstMember">
											<div class="subTitle">
												<strong>안녕하세요! K Car 입니다.</strong>
											</div>
											<ul class="gnbEtc">
												<li><a><i class="el-login el-icon-undefined"></i>로그인</a></li>
												<li><a><i class="el-event el-icon-undefined"></i>이벤트</a></li>
												<li><a><i class="el-history el-icon-undefined"></i>최근
														본 차량</a></li>
												<li class="menuWhy"><a>왜 K Car를 선택할까요?</a></li>
											</ul>
										</div>
										<div class="bannerWrap el-row">
											<div>
												<!---->
											</div>
										</div>
									</div>
									<div class="gnbAllWrap">
										<div class="gnbCell">
											<div class="menuList">
												<ul>
													<li><a>내차팔기</a>
														<ul>
															<li><a>내차팔기 홈서비스</a></li>
														</ul>
														<ul>
															<li><a>법인차매각신청</a></li>
														</ul>
														<ul>
															<li><a>폐차신청</a></li>
														</ul>
														<ul>
															<li><a>내차팔기 고객후기</a></li>
														</ul></li>
													<li><a>내차사기</a>
														<ul>
															<li><a>차량검색</a></li>
														</ul>
														<ul>
															<li><a>내차사기 홈서비스</a></li>
														</ul>
														<ul>
															<li><a id="mkt_prepare">판매준비차량</a></li>
														</ul>
														<ul>
															<li><a>3D 라이브 뷰</a></li>
														</ul>
														<ul>
															<li><a>최근 본 차량</a></li>
														</ul>
														<ul>
															<li><a>내차사기 고객후기</a></li>
														</ul>
														<ul>
															<li><a>리스차량</a></li>
														</ul>
														<ul>
															<li><a>브랜드 인증관</a></li>
														</ul></li>
													<li><a>렌트</a>
														<ul>
															<li><a>중고차렌트</a></li>
														</ul>
														<ul>
															<li><a>렌트특가</a></li>
														</ul>
														<ul>
															<li><a>신차렌트</a></li>
														</ul>
														<ul>
															<li><a>기사포함렌트</a></li>
														</ul>
														<ul>
															<li><a>렌트지점</a></li>
														</ul>
														<ul>
															<li><a>렌트일반정비소</a></li>
														</ul>
														<ul>
															<li><a>렌트사고정비소</a></li>
														</ul></li>
													<li><a>금융</a>
														<ul>
															<li><a>할부</a></li>
														</ul>
														<ul>
															<li><a>리스</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="menuList">
												<ul>
													<li><a>K Car 프로모션</a>
														<ul>
															<li><a>위클리특가</a></li>
															<li><a>테마기획전</a></li>
															<li><a>K Car 인기차</a></li>
															<li><a>렌트특가</a></li>
														</ul></li>
													<li><a>보증서비스</a>
														<ul>
															<li><a>K Car Warranty</a></li>
														</ul></li>
													<li><a>전국직영점</a>
														<ul>
															<li><a>전국직영점</a></li>
														</ul></li>
													<li><a>고객지원</a>
														<ul>
															<li><a>자주하는 질문</a></li>
															<li><a>보증서비스 수리접수</a></li>
															<li><a>카카오톡 문의</a></li>
															<li><a>제안/칭찬접수</a></li>
															<li><a>모바일팩스</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="menuList">
												<ul>
													<li><a>공지사항</a>
														<ul>
															<li><a>공지사항</a></li>
															<li><a>이벤트</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="rightLink">
												<span><a>회사소개</a></span> <span><a>개인정보처리방침</a></span>
											</div>
										</div>
									</div>
								</div>
								<form id="form-biz"
									action="https://bizmessage.kakao.com/chat/open" method="post"
									target="””">
									<input type="hidden" name="uuid" value="@KCar"> <input
										type="hidden" name="extra" value="K Car">
								</form>
								<div>
									<div class="el-dialog__wrapper popup popCenter "
										style="display: none;">
										<div role="dialog" aria-modal="true" aria-label="모바일팩스란"
											class="el-dialog" style="margin-top: 15vh;">
											<div class="el-dialog__header">
												<span class="el-dialog__title">모바일팩스란</span>
												<button type="button" aria-label="Close"
													class="el-dialog__headerbtn">
													<i class="el-dialog__close el-icon el-icon-close"></i>
												</button>
											</div>
											<!---->
											<div class="el-dialog__footer">
												<span class="dialog-footer"><div
														class="footerBtnWrap">
														<div class="searchTrigger box maxW400 el-row">
															<button class="button apply">닫기</button>
														</div>
													</div></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!---->
						</div>
					</div>
				</header>
				<div class="warrantyWrap contWrap">
					<div class="hsBanner">
						<p class="title">K Car Warranty</p>
						<p class="desc">
							최대 365일까지 고장∙수리 걱정 없이!<br> K Car에 맡겨주세요.
						</p>
					</div>
					<div class="contentsBox section01 el-row">
						<div>
							<div class="titleWrap pageContents">
								<strong>K Car Warranty</strong> 혜택 안내
							</div>
							<div class="hsListStep">
								<ul class="stepBox">
									<li class="iconType01"><p class="title">폭 넓은 보증범위</p>
										<p class="desc">엔진, 변속기는 물론 일반부품 대부분을 보증해드려요.</p></li>
									<li class="iconType02"><p class="title">전국 정비 네트워크</p>
										<p class="desc">
											GS엠비즈 오토오아시스 제휴지점 및 K Car 협력 정비소를 통해<br> 편리하게 정비 받으세요.
										</p></li>
									<li class="iconType03"><p class="title">부담 없는 가입비</p>
										<p class="desc">업계 최저 수준의 가입비와 폭넓은 보증 혜택을 누려 보세요.</p></li>
									<li class="iconType04"><p class="title">든든한 보증한도</p>
										<p class="desc">최대 1,500만원까지 보증되니까 큰 고장에도 든든해요.</p></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="contentsBox section02 el-row">
						<div>
							<div class="titleWrap pageContents">
								<strong>최대 365일 K Car Warranty로 든든하게</strong>
								<p class="subTxt">K Car만의 품질보증연장 서비스, K Car Warranty! 구매하신
									차량의 품질 보증기간을 최대 365일까지 연장해 드려요.</p>
							</div>
							<div class="innerContents alignC">
								<div class="subTitle">
									<strong>K Car Warranty</strong> 종류 및 보증기간
								</div>
								<p class="subTxt">90일부터 365일까지 자유롭게 선택할 수 있어요.</p>
								<div class="kwBox">
									<ul>
										<li><p>저렴한 가격, 실속 있는 보증</p>
											<div class="kwTxt">
												<strong>KW3</strong>
											</div>
											<p class="ft18">
												<strong>보증기간 <span class="pointColor">90일</span> 또는
													<span class="pointColor">5,000km</span></strong>
											</p></li>
										<li><p>가장 많은 선택을 받은 베스트 상품</p>
											<div class="kwTxt">
												<span class="bestTag">인기</span><strong>KW6</strong>
											</div>
											<p class="ft18">
												<strong>보증기간 <span class="pointColor">180일</span>
													또는 <span class="pointColor">10,000km</span></strong>
											</p></li>
										<li><p>내 차를 위한 안전하고 든든한 선택</p>
											<div class="kwTxt">
												<strong>KW12</strong>
											</div>
											<p class="ft18">
												<strong>보증기간 <span class="pointColor">365일</span>
													또는 <span class="pointColor">20,000km</span></strong>
											</p></li>
									</ul>
								</div>
								<div class="ft13 alignL">
									<ul class="guideTxt">
										<li>보증기간이 지나거나 보증 주행거리를 넘어서면 보증이 종료됩니다.</li>
										<li>제조사 일반부품보증기간이 남은 경우, 일반부품보증이 끝나는 시점부터 K Car Warranty
											보증기간이 시작됩니다. 단, 제조사 일반부품보증기간이 남은 상태에서 K Car Warranty로 보증수리를
											접수하면, 접수한 날부터 K Car Warranty 보증기간이 시작됩니다.</li>
									</ul>
								</div>
							</div>
							<div class="innerContents alignC innerContents2">
								<div class="subTitle">
									<strong>K Car Warranty</strong> 가입비 및 보증한도
								</div>
								<p class="subTxt">업계 최저 수준의 부담 없는 가입비! 국산차도 수입차도 든든하게 보증해
									드려요.</p>
								<div class="sectionInner">
									<div class="asteriskArea">
										<h2 class="tabTit">국산차</h2>
										<span>*부가가치세 포함</span>
									</div>
									<h3 class="tabTit mgTAdjust">경차/소형차</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>165,000원</td>
												<td>265,000원</td>
												<td>465,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">3,000,000원</span></td>
												<td><span class="pointColor">5,000,000원</span></td>
												<td><span class="pointColor">10,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">50,000원/건</td>
											</tr>
										</tbody>
									</table>
									<h3 class="tabTit">준중형차/중형차/화물차</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>265,000원</td>
												<td>365,000원</td>
												<td>565,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">3,000,000원 </span></td>
												<td><span class="pointColor">5,000,000원 </span></td>
												<td><span class="pointColor">10,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">50,000원/건</td>
											</tr>
										</tbody>
									</table>
									<h3 class="tabTit">대형차/RV/SUV/승합차/스포츠카</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>365,000원</td>
												<td>465,000원</td>
												<td>765,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">3,000,000원 </span></td>
												<td><span class="pointColor">5,000,000원 </span></td>
												<td><span class="pointColor">10,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">50,000원/건</td>
											</tr>
										</tbody>
									</table>
									<h3 class="tabTit">특대형차</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>565,000원</td>
												<td>665,000원</td>
												<td>965,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">3,000,000원 </span></td>
												<td><span class="pointColor">5,000,000원 </span></td>
												<td><span class="pointColor">10,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">50,000원/건</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="innerContents alignC innerContents2">
								<div class="sectionInner">
									<div class="asteriskArea mT0">
										<h2 class="tabTit">수입차</h2>
										<span>*부가가치세 포함</span>
									</div>
									<h3 class="tabTit mgTAdjust">소형차</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>665,000원</td>
												<td>965,000원</td>
												<td>1,565,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">5,000,000원</span></td>
												<td><span class="pointColor">10,000,000원</span></td>
												<td><span class="pointColor">15,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">200,000원/건</td>
											</tr>
										</tbody>
									</table>
									<h3 class="tabTit">중형차</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>1,065,000원</td>
												<td>1,365,000원</td>
												<td>2,065,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">5,000,000원 </span></td>
												<td><span class="pointColor">10,000,000원 </span></td>
												<td><span class="pointColor">15,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">200,000원/건</td>
											</tr>
										</tbody>
									</table>
									<h3 class="tabTit">대형차</h3>
									<table width="100%" class="nonDataTable">
										<colgroup>
											<col width="180px">
											<col width="345px">
											<col width="345px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>KW3</th>
												<th><span class="bestTag">인기</span> KW6</th>
												<th>KW12</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>가입비</th>
												<td>1,665,000원</td>
												<td>1,965,000원</td>
												<td>2,965,000원</td>
											</tr>
											<tr>
												<th>보증한도</th>
												<td><span class="pointColor">5,000,000원 </span></td>
												<td><span class="pointColor">10,000,000원 </span></td>
												<td><span class="pointColor">15,000,000원</span></td>
											</tr>
											<tr>
												<th>자기부담금</th>
												<td colspan="3" class="txtWon">200,000원/건</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="innerContents alignC innerContents2">
								<div class="sectionInner">
									<div class="subTitle">
										<strong>K Car Warranty</strong> 보증범위
									</div>
									<p class="subTxt">엔진, 변속기는 물론, 제동장치와 일반부품까지 폭넓게! 예상치 못한
										고장에도 안심할 수 있어요.</p>
									<table width="100%" class="nonDataTable mT70">
										<colgroup>
											<col width="182px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>자세한 보증항목</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>엔진</th>
												<td><p class="tableP">실린더 블록 및 내부 구성부품, 크랭크 샤프트, 로드
														및 메인베어링, 캠베어링, 익스팬션 플러그, 피스톤 및 피스톤링, 커넥팅로드, 캠샤프트, 실린더 헤드,
														밸브 및 가이드, 밸브커버, 밸브스프링, 로커암 및 푸시로드, 폴리, 엔진 아이들러/텐셔너, 타이밍 체인
														및 스프로켓, 타이밍체인 하우징, 흡/배기 매니폴드, 플라이휠, 밸런스샤프트, 하모닉밸런스 및 리테이너
														볼트, 크랭크 샤프트풀리, 오일팬, 오일펌프 및 프레셔 릴리프밸브, 엔진오일 쿨러, 오일필터 어댑터 및
														하우징, 워터펌프, 써모스탯 및 하우징, 연료공급펌프, 버큠(진공)펌프, 오일레벨게이지 및 튜브,
														바이패스밸브, 인젝션펌프</p></td>
											</tr>
											<tr>
												<th>변속기</th>
												<td><p class="tableP">변속기케이스 및 내부 구성부품, 트랜스퍼케이스 및
														내부 구성부품, 오일펌프, 밸브바디, 토크컨버터, 샤프트, 밴드, 드럼 기어세트베어링, 부싱,
														솔레노이드, 밸브, 오토미션 전용쿨러, 메인 샤프트 및 기어세트, 시프트포크, 싱크로나이저링, 오일
														레벨게이지 및 튜브, 드라이브 플레이트(오토), 내부디스크(오토)</p></td>
											</tr>
											<tr>
												<th>제동</th>
												<td><p class="tableP">ABS모듈, 부스터, 캘리퍼, 마스터/휠실린더,
														드럼, 디스크(브레이크패드 제외), 브레이크호스, EPB(전자식주차브레이크)</p></td>
											</tr>
											<tr>
												<th rowspan="4">일반</th>
												<td><p class="tableP">연료펌프, 베이퍼라이저, 스로틀바디, EGR밸브,
														연료인젝터, 믹서, 연료고압펌프, 과급기, 발전기, 시동모터, 점화코일, 엔진/미션마운팅, ECU,
														TCU, ETACS/BCM</p></td>
											</tr>
											<tr>
												<td><p class="tableP">에어컨 관련 부품(에어컨컴프, 풀리, 에어컨 파이프,
														호스류, 에어컨콘덴서, 리시버탱크, 익스팬션밸브, O링류), 히터 코어(서미스터, 히터콘트롤유닛,
														히터모터, 히터팬), 블로우모터(모드엑츄에이터, 워터 템퍼레이처센서), 에바포레이터</p></td>
											</tr>
											<tr>
												<td><p class="tableP">라디에이터(팬, 팬모터), 냉각팬/컨덴서팬,
														인터쿨러, 차동장치/액슬하우징, 액슬축, 허브베어링, 등속조인트, 완충기(어퍼암, 로어암, 볼조인트,
														쇽업쇼바, 스테이빌라이저&amp;부싱, 하부암컴플리트, 스트러트브라켓, 허브베어링, 휠허브/너클,
														코일스프링, 마운팅류), 스티어링기어/MDPS(스티어링기어링키지, 컬럼샤프트, 유니버셜 조인트, 파워렉,
														피니언&amp;부품, 타이로드앤드, 파워스티어링 오일펌프, 파워스티어링 리저브,파워호스, EPS센서),
														파워고압/저압호스, 파워펌프</p></td>
											</tr>
											<tr>
												<td><p class="tableP">순정오디오(순정내비게이션, 스피커, 핸들리모컨,
														순정앰프), 순정하이패스 및 ECM, 시동키 관련부품(키레스 리시버 안테나/컨트롤러), 트렁크/본넷쇼바,
														미션체인지레버 관련부품, 안전벨트 관련부품, 도어관련부품(윈도우모터&amp;기어, 도어 엑추에이터),
														와이퍼모터(워셔펌프), 에어백관련부품, 와이어링하네스, 각종 센서류, 릴레이, 모듈류, 리저브 탱크류</p></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="ft13 alignL mT24">
									<ul class="guideTxt">
										<li>소모성 부품(타이어, 각종 오일류, 패드, 부동액), PB제품(차량 출고 시 장착된 옵션 외에
											사용자가 추가 장착한 옵션)은 보증 대상이 아닙니다.</li>
									</ul>
								</div>
							</div>
							<div class="warrantyBanner">
								<p>제조사 일반보증기간이 남은 차량도 가입할 수 있어요.</p>
								<h5>내 차 보증 혜택을 더 오래 누려 보세요.</h5>
								<span>제조사 보증기간 + K Car Warranty 보증기간</span>
							</div>
							<div class="innerContents">
								<div class="titleWrap pageContents">
									<strong>보증수리 접수방법</strong>
									<p class="subTxt">
										접수부터 수리까지 빠르게!<br> 가까운 지정 정비업체에서 보증수리를 받을 수 있어요.
									</p>
								</div>
								<div class="wtInfo">
									<ul>
										<li class="wtInfoImg"><img
											src="/images/homeserivce/illust-warranty-info-01.svg" alt=""></li>
										<li class="wtInfoCon"><label>STEP1</label>
											<h5>보증수리 접수</h5>
											<p>
												K Car Warranty에 가입하셨다면,<br> 전화 또는 온라인으로 내용을 접수해 주세요.
											</p></li>
									</ul>
									<ul>
										<li class="wtInfoImg"><img
											src="/images/homeserivce/illust-warranty-info-02.svg" alt=""></li>
										<li class="wtInfoCon"><label>STEP2</label>
											<h5>지정 정비업체 확인</h5>
											<p>K Car 전문 상담원이 가장 가까운 지정 정비소를 안내해 드립니다.</p>
											<ul class="guideTxt mT8">
												<li>수리는 지정정비소에서만 가능합니다.</li>
											</ul></li>
									</ul>
									<ul>
										<li class="wtInfoImg"><img
											src="/images/homeserivce/illust-warranty-info-03.svg" alt=""></li>
										<li class="wtInfoCon"><label>STEP3</label>
											<h5>보증수리 진행</h5>
											<p>지정정비소에서 차량의 문제를 파악하고 빠르게 수리해 드립니다.</p></li>
									</ul>
									<ul>
										<li class="wtInfoImg"><img
											src="/images/homeserivce/illust-warranty-info-04.svg" alt=""></li>
										<li class="wtInfoCon"><label>STEP4</label>
											<h5>차량 출고</h5>
											<p>차량 수리가 끝났습니다. 수리비 걱정 없이 차량만 가져가세요.</p></li>
									</ul>
								</div>
							</div>
							<div class="infoCus">
								<div>
									<ul>
										<li class="infoCusImg"><img
											src="/images/homeserivce/illust-detail-insurance-02.png"
											alt=""></li>
										<li class="infoCusCon"><h5>전화 접수</h5>
											<p>
												K Car 고객센터 <span>1588-5455</span>
											</p></li>
									</ul>
									<ul>
										<li class="infoCusImg"><img
											src="/images/homeserivce/illust-finance-installment-03.svg"
											alt=""></li>
										<li class="infoCusCon"><h5>온라인 접수</h5>
											<div class="searchTrigger box Large el-row">
												<button class="button lineApply">보증서비스 수리접수</button>
											</div></li>
									</ul>
								</div>
							</div>
							<div class="innerContents">
								<div class="sectionInner">
									<div class="titleWrap pageContents">
										K Car Warranty에 가입하면<br> <strong>실제로 얼마나 수리비를 아낄
											수 있을까요?</strong>
									</div>
									<div class="KWReview">
										<ul>
											<li><p class="KWRInfo">
													<span>KW6</span> 서*창 고객님/현대 그랜저 HG
												</p></li>
											<li class="KWRImg"><img
												src="/images/homeserivce/kwr-img.png" alt="차량 이미지"></li>
											<li><p class="KWRCon">EGR밸브, 터보 고장</p>
												<p class="KWRSave">
													K Car Warranty로<br> 약 <span>108</span>만원 절약
												</p></li>
										</ul>
										<ul>
											<li><p class="KWRInfo">
													<span>KW12</span> 김*수 고객님/아우디 뉴 A6
												</p></li>
											<li class="KWRImg"><img
												src="/images/homeserivce/kwr-img.png" alt="차량 이미지"></li>
											<li><p class="KWRCon">트랜스미션 고장</p>
												<p class="KWRSave">
													K Car Warranty로<br> 약 <span>398</span>만원 절약
												</p></li>
										</ul>
										<ul>
											<li><p class="KWRInfo">
													<span>KW6</span> 홍*동 고객님/쌍용 코란도C
												</p></li>
											<li class="KWRImg"><img
												src="/images/homeserivce/kwr-img.png" alt="차량 이미지"></li>
											<li><p class="KWRCon">앞 드럼, 펌프, 트랜스미션 고장</p>
												<p class="KWRSave">
													K Car Warranty로<br> 약 <span>255</span>만원 절약
												</p></li>
										</ul>
									</div>
									<div class="KWNotice">
										<h5>꼭! 알아두세요</h5>
										<ul class="guideTxt">
											<li>4,000cc 또는 400마력 이상의 수입차는 K Car Warranty 가입이 제한됩니다.</li>
											<li>아래 차종은 국산차 특대형에 속합니다.
												<ul class="listDotN">
													<li><strong>세단</strong>G90, EQ900, 에쿠스(구형,신형), G80,
														제네시스(DH,BH), K9, 체어맨W시리즈</li>
													<li><strong>SUV/기타</strong>GV80, 팰리세이드, 베라크루즈, 모하비,
														트래버스, 콜로라도, 카마로</li>
												</ul>
											</li>
											<li>특수차량(튜닝 차량, 특수장비 차량)은 K Car Warranty 가입이 제한됩니다.</li>
											<li>가입 철회 및 환불 규정은 K Car Warranty 약관을 따릅니다.</li>
											<li>보증수리 접수 후 7일 안에 K Car 지정 정비업체를 방문해 차량을 입고해야 합니다.</li>
											<li>보증수리는 K Car 고객센터에서 안내하는 오토오아시스 제휴 지점 및 지정 협력업체에서만
												가능합니다.</li>
											<li>보증수리 시 신차 출고에 장착되는 OEM제품과 동일 혹은 유사 수준의 대체부품(규격품,
												재생품, 중고품)이 사용될 수 있습니다.</li>
											<li>문의 및 보증수리 접수: K Car 고객센터(1588-5455)</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<footer class="footerWrap">
					<div class="infoFsection">
						<div class="infoIn">
							<dl>
								<dt>내차 사고 팔 땐</dt>
								<dd>
									<strong>1588-5455</strong>
								</dd>
								<dd>
									<span class="telservice">내차사기 홈서비스 (연결 1번) / 일반문의 (연결
										4번)</span> <span class="weekday">월~토요일 <strong>09:00~18:00</strong></span>
									<span class="weekend">법정공휴일/일요일 <strong>휴무</strong></span>
								</dd>
								<dd>
									<span class="telservice">내차팔기 홈서비스 (연결 2번) </span> <span
										class="weekday">월~일요일 <strong>09:00~18:00</strong></span> <span
										class="weekend">법정공휴일 <strong>휴무</strong></span>
								</dd>
								<dd>
									<span>사업제휴문의(partnership@kcar.com)</span> <span></span>
								</dd>
							</dl>
							<div class="infolink">
								<ul>
									<li><a href="/si/KwGurnteSvc" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"> 회사소개 </a></li>
									<li><a href="/si/KwGurnteSvc" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"> IR </a></li>
									<li><a href="/si/KwGurnteSvc"
										class="nuxt-link-exact-active nuxt-link-active"
										aria-current="page"> 보증서비스 </a></li>
									<li><a href="/cs/menu" class=""> 고객지원 </a></li>
								</ul>
								<ul>
									<li><a href="/si/KwGurnteSvc" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"> 인재채용 </a></li>
									<li><a href="/si/KwGurnteSvc" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"> 비윤리제보 </a></li>
									<li><a href="/si/KwGurnteSvc" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"> 윤리강령 </a></li>
								</ul>
								<ul>
									<li><a href="/ci/atcl/ftAtcl?subCd=ATCL004" class=""><strong>개인정보처리방침</strong></a></li>
									<li><a href="/ci/atcl/ftAtcl" class=""> 이용약관 </a></li>
									<li><a href="/ci/frgnSp/about" class=""> Foreigner
											Support </a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="footerSection">
						<div class="copyWrap">
							<p class="logoTit">
								<img src="/images/common/footer-logo-grey.svg" alt="K Car 로고">
							</p>
							<ul>
								<li>상호명 : 케이카 주식회사</li>
								<li>대표자 : 정인국</li>
								<li>개인정보관리책임자 : 이우근</li>
								<li>사업자등록번호 : 787-87-00729</li>
							</ul>
							<ul>
								<li>통신판매업 신고번호 : 제 2018-서울영등포-0562호</li>
								<li>사업장 소재지 : 서울특별시 영등포구 선유로 43길 27, 3층(양평동3가, 청우오토프라자)</li>
							</ul>
							<div class="snsGroup">
								<a href="/si/KwGurnteSvc" aria-current="page"
									class="snsFacebook nuxt-link-exact-active nuxt-link-active"><img
									src="/images/common/icon-sns-facebook.svg" alt="페이스북"></a> <a
									href="/si/KwGurnteSvc" aria-current="page"
									class="snsInsta nuxt-link-exact-active nuxt-link-active"><img
									src="/images/common/icon-sns-instagram.svg" alt="인스타그램"></a>
								<a href="/si/KwGurnteSvc" aria-current="page"
									class="snsCafe nuxt-link-exact-active nuxt-link-active"><img
									src="/images/common/icon-sns-cafe.svg" alt="네이버 카페"></a> <a
									href="/si/KwGurnteSvc" aria-current="page"
									class="snsBlog nuxt-link-exact-active nuxt-link-active"><img
									src="/images/common/icon-sns-blog.svg" alt="네이버 블로그"></a> <a
									href="/si/KwGurnteSvc" aria-current="page"
									class="snsPost nuxt-link-exact-active nuxt-link-active"><img
									src="/images/common/icon-sns-post.svg" alt="네이버 포스트"></a> <a
									href="/si/KwGurnteSvc" aria-current="page"
									class="snsYoutube nuxt-link-exact-active nuxt-link-active"><img
									src="/images/common/icon-sns-youtube.svg" alt="유투브"></a>
							</div>
							<p class="copyright">Copyright © 케이카 주식회사 All Rights Reserved
							</p>
						</div>
						<div class="appGroup">
							<div class="el-select">
								<!---->
								<div class="el-input el-input--suffix">
									<!---->
									<input type="text" readonly="readonly" autocomplete="off"
										placeholder="family site" class="el-input__inner">
									<!---->
									<span class="el-input__suffix"><span
										class="el-input__suffix-inner"><i
											class="el-select__caret el-input__icon el-icon-arrow-up"></i>
										<!---->
											<!---->
											<!---->
											<!---->
											<!----></span>
									<!----></span>
									<!---->
									<!---->
								</div>
								<div class="el-select-dropdown el-popper"
									style="display: none; min-width: 225px;">
									<div class="el-scrollbar" style="">
										<div class="el-select-dropdown__wrap el-scrollbar__wrap"
											style="margin-bottom: -17px; margin-right: -17px;">
											<ul class="el-scrollbar__view el-select-dropdown__list">
												<!---->
												<li class="el-select-dropdown__item"><span>K
														Car옥션</span></li>
											</ul>
										</div>
										<div class="el-scrollbar__bar is-horizontal">
											<div class="el-scrollbar__thumb"
												style="transform: translateX(0%);"></div>
										</div>
										<div class="el-scrollbar__bar is-vertical">
											<div class="el-scrollbar__thumb"
												style="transform: translateY(0%);"></div>
										</div>
									</div>
									<!---->
								</div>
							</div>
							<dl>
								<dt>APP 다운로드</dt>
								<dd>
									<div class="appbox">
										<a href="/si/KwGurnteSvc" aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"><img
											src="/images/common/img-apple.png" alt="App Store"></a>
										<div class="qr">
											<img src="/images/common/K_Car_iOS_down_QR.png"
												alt="App Store QR Code">
										</div>
									</div>
									<div class="appbox">
										<a href="/si/KwGurnteSvc" aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"><img
											src="/images/common/img-google.png" alt="Google Play"></a>
										<div class="qr">
											<img src="/images/common/K_Car_android_down_QR.png"
												alt="Google Play QR Code">
										</div>
									</div>
								</dd>
							</dl>
						</div>
					</div>
					<div class="floatingMenu">
						<div class="btngp">
							<div class="ibtnMenuBox">
								<button type="button" class="ibtn btnToggle">
									<i class="icon"></i><span class="_hidden">더보기</span>
								</button>
								<div class="ibtnMenu">
									<ul>
										<li><a href="/account/login" class="login"><i
												class="icon"></i><span>로그인</span></a></li>
										<li><a href="/bc/LatelyViewedCar/list" class="history"><i
												class="icon"></i><span>최근 본 차량</span></a></li>
										<li><a href="/account/login" class="favorite"><i
												class="icon"></i><span>찜한 차량</span></a></li>
										<li><a href="/cs/Menu" class="customer"><i
												class="icon"></i><span>고객지원</span></a></li>
									</ul>
								</div>
							</div>
							<button type="button" class="ibtn btnTalk">
								<i class="icon"></i><span class="_hidden">TALK</span>
							</button>
							<form id="form-biz"
								action="https://bizmessage.kakao.com/chat/open" method="post"
								target="””">
								<input type="hidden" name="uuid" value="@KCar"> <input
									type="hidden" name="extra" value="K Car">
							</form>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>
	
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 497px; z-index: 2002; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">금융</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				할부</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				리스</li>
		</ul>
	</div>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 240px; z-index: 2007; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">내차팔기</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차팔기 홈서비스</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				법인차매각신청</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				폐차신청</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차팔기 고객후기</li>
		</ul>
	</div>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 336px; z-index: 2010; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">내차사기</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				차량검색</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차사기 홈서비스</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				판매준비차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				3D 라이브 뷰</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				최근 본 차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차사기 고객후기</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				리스차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				브랜드 인증관</li>
		</ul>
	</div>
	
</body>
</html>