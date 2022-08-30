<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>마이페이지 직영점 방문예약 신청내역</title>
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
				<%@ include file="/WEB-INF/default/header.jsp" %>
				<div class="contentsWrap">
					<div class="mypageWrap">
						<div>
							<div class="mypagePop">
								<div class="el-dialog__wrapper popup popCenter mypagePop active"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="맞춤정보 설정"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">맞춤정보 설정</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box Large popFixBtnXS el-row">
														<button type="button" class="button apply">다음</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
								<div class="el-dialog__wrapper popup popCenter hauto"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="맞춤 서비스 제공 안내"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">맞춤 서비스 제공 안내</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box Large maxW400 el-row">
														<button class="button apply">닫기</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
								<div class="el-dialog__wrapper popup confirm noTitle"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="dialog"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title"></span>
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
							<nav>
								<div class="mypageMenu">
									<h2 class="title">
										<a href="/mp" aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"> 마이페이지 </a>
									</h2>
									<ul>
										<li><a href="BuyOrderManage" class=""> 내차사기
												주문관리 </a></li>
										<li><a href="SellAplMgtList" class=""> 내차팔기
												신청관리 </a></li>
										<li><a href="RentAplList" class=""> 렌트 신청내역 </a></li>
									</ul>
									<ul>
										<li><a href="DrcmgtStrVstResvLst" class=""> 직영점
												방문예약 신청내역 </a></li>
										<li><a href="SellRdyCarList" class=""> 판매준비차량 알림
										</a></li>
									</ul>
									<ul>
										<li><a href="/mp/WishCarList" class=""> 찜한 차량 </a></li>
										<li><a href="/bc/LatelyViewedCar/list" class=""> 최근 본
												차량 </a></li>
									</ul>
									<ul>
										<li><a href="/mp" aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"> 회원정보 </a></li>
										<li><a href="/mp" aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"> SNS 로그인
												설정 </a></li>
										
									</ul>
								</div>
							</nav>
						</div>
						<div class="mypagCont mypageMain">
							<h3 class="subTitle">직영점 방문예약 신청내역</h3>
							<div class="contentsBox section01 mT64 el-row">
								<div class="sellTotal mb40">
									<ul>
										<li><a><strong>전체 0</strong>건</a></li>
										<li><a><span>예약 0</span>건</a></li>
										<li><a><span>취소 0</span>건</a></li>
									</ul>
								</div>
								<div class="board">
									<div class="el-row">
										<div class="boardListTable mB40">
											<div class="TblDefault mypageList">
												<div
													class="el-table el-table--fit el-table--enable-row-hover"
													style="width: 100%;">
													<div class="hidden-columns">
														<div></div>
														<div></div>
														<div></div>
														<div></div>
													</div>
													<div class="el-table__header-wrapper">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__header" style="width: 905px;">
															<colgroup>
																<col name="el-table_30_column_91" width="300">
																<col name="el-table_30_column_92" width="220">
																<col name="el-table_30_column_93" width="268">
																<col name="el-table_30_column_94" width="117">
																<col name="gutter" width="0">
															</colgroup>
															<thead class="has-gutter">
																<tr class="">
																	<th colspan="1" rowspan="1"
																		class="el-table_30_column_91     is-leaf el-table__cell"><div
																			class="cell">차량 정보</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_30_column_92     is-leaf el-table__cell"><div
																			class="cell">직영점</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_30_column_93     is-leaf el-table__cell"><div
																			class="cell">구매 방법</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_30_column_94     is-leaf el-table__cell"><div
																			class="cell">상태</div></th>
																	<th class="el-table__cell gutter"
																		style="width: 0px; display: none;"></th>
																</tr>
															</thead>
														</table>
													</div>
													<div class="el-table__body-wrapper is-scrolling-none">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__body" style="width: 905px;">
															<colgroup>
																<col name="el-table_30_column_91" width="300">
																<col name="el-table_30_column_92" width="220">
																<col name="el-table_30_column_93" width="268">
																<col name="el-table_30_column_94" width="117">
															</colgroup>
															<tbody>
																<!---->
															</tbody>
														</table>
														<div class="el-table__empty-block"
															style="height: 100%; width: 905px;">
															<span class="el-table__empty-text"><div
																	class="nolist">
																	<p>
																		<span>방문예약 신청내역이 없습니다.</span>
																	</p>
																</div></span>
														</div>
														<!---->
													</div>
													<!---->
													<!---->
													<!---->
													<!---->
													<div class="el-table__column-resize-proxy"
														style="display: none;"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="_hidden">
										<div class="pagination -sm">
											<!---->
											<!---->
											<!---->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="dialog"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title"></span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="dialog"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title"></span>
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
				<%@ include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 350px; z-index: 2007; display: none;"
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