<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>마이페이지 찜한 차량</title>


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
										<li><a href="WishCarList" class=""> 찜한 차량 </a></li>
										<li><a href="LatelyViewedCar" class=""> 최근 본
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
							<h3 class="subTitle">찜한차량</h3>
							<div class="tabsWrapsm mt40 el-row">
								<div class="tabsCol02sm padType el-tabs el-tabs--top">
									<div class="el-tabs__header is-top">
										<div class="el-tabs__nav-wrap is-top">
											<div class="el-tabs__nav-scroll">
												<div role="tablist" class="el-tabs__nav is-top"
													style="transform: translateX(0px);">
													<div class="el-tabs__active-bar is-top"
														style="width: 43px; transform: translateX(0px);"></div>
													<div id="tab-drct" aria-controls="pane-drct" role="tab"
														aria-selected="true" tabindex="0"
														class="el-tabs__item is-top is-active">직영차</div>
													<div id="tab-rent" aria-controls="pane-rent" role="tab"
														tabindex="-1" class="el-tabs__item is-top">렌트</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-tabs__content">
										<div role="tabpanel" id="pane-drct" aria-labelledby="tab-drct"
											class="el-tab-pane">
											<div class="tabCont">
												<div class="contentsBox section01  el-row">
													<div class="board">
														<div class="el-row">
															<div class="legalDesBox ty2">
																<p>찜한차량은 최대 3개월동안 보관되며 판매완료시 삭제 됩니다.</p>
															</div>
															<div class="boardStatus">
																<span class="total">전체 <span class="pointColor">0</span>
																	건
																</span>
																<ul class="sorting">
																	<li class=""><a href="javascript:void(0)">3D</a></li>
																	<li class=""><a href="javascript:void(0)">특가</a></li>
																</ul>
																<div class="filter">
																	<div class="el-select">
																		<!---->
																		<div class="el-input el-input--suffix">
																			<!---->
																			<input type="text" readonly="readonly"
																				autocomplete="off" placeholder="기본정렬"
																				class="el-input__inner">
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
																			style="display: none; min-width: 233px;">
																			<div class="el-scrollbar" style="">
																				<div
																					class="el-select-dropdown__wrap el-scrollbar__wrap"
																					style="margin-bottom: -17px; margin-right: -17px;">
																					<ul
																						class="el-scrollbar__view el-select-dropdown__list">
																						<!---->
																						<li class="el-select-dropdown__item"><span>높은
																								가격순</span></li>
																						<li class="el-select-dropdown__item"><span>낮은
																								가격순</span></li>
																						<li class="el-select-dropdown__item"><span>적은
																								주행거리순</span></li>
																						<li class="el-select-dropdown__item"><span>많은
																								주행거리순</span></li>
																						<li class="el-select-dropdown__item"><span>낮은
																								연식순</span></li>
																						<li class="el-select-dropdown__item"><span>최근
																								연식순</span></li>
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
																</div>
															</div>
															<div class="mt16 el-row">
																<div class="boardListTable">
																	<div class="TblDefault mypageList">
																		<button type="button"
																			class="el-button compBtn el-button--button">
																			<!---->
																			<!---->
																			<span> 비교함 <b>0</b></span>
																		</button>
																		<div
																			class="el-table el-table--fit el-table--enable-row-hover"
																			style="width: 100%;">
																			<div class="hidden-columns">
																				<div class="alignC"></div>
																				<div></div>
																				<div class="alignC"></div>
																			</div>
																			<div class="el-table__header-wrapper">
																				<table cellspacing="0" cellpadding="0" border="0"
																					class="el-table__header" style="width: 905px;">
																					<colgroup>
																						<col name="el-table_33_column_98" width="50">
																						<col name="el-table_33_column_99" width="685">
																						<col name="el-table_33_column_100" width="170">
																						<col name="gutter" width="0">
																					</colgroup>
																					<thead class="has-gutter">
																						<tr class="">
																							<th colspan="1" rowspan="1"
																								class="el-table_33_column_98   el-table-column--selection  is-leaf el-table__cell"><div
																									class="cell">
																									<label class="el-checkbox is-disabled"><span
																										class="el-checkbox__input is-disabled"><span
																											class="el-checkbox__inner"></span><input
																											type="checkbox" aria-hidden="false"
																											disabled="disabled"
																											class="el-checkbox__original" value=""></span>
																									<!----></label>
																								</div></th>
																							<th colspan="1" rowspan="1"
																								class="el-table_33_column_99     is-leaf el-table__cell"><div
																									class="cell"></div></th>
																							<th colspan="1" rowspan="1"
																								class="el-table_33_column_100     is-leaf el-table__cell"><div
																									class="cell"></div></th>
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
																						<col name="el-table_33_column_98" width="50">
																						<col name="el-table_33_column_99" width="685">
																						<col name="el-table_33_column_100" width="170">
																					</colgroup>
																					<tbody>
																						<!---->
																					</tbody>
																				</table>
																				<div class="el-table__empty-block"
																					style="height: 50%; width: 905px;">
																					<span class="el-table__empty-text"><div
																							class="nolist2">
																							<p>
																								<strong>찜한차량이 없습니다.</strong>
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
																<div class="paginationWrap">
																	<div class="searchTrigger box Inner01 DarkColor el-row">
																		<button class="button lineApply">삭제</button>
																	</div>
																	<div class="pagination -sm mT40">
																		<div class="pagination -sm">
																			<!---->
																			<!---->
																			<!---->
																		</div>
																	</div>
																	<div class="utilWrap">
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">문자로 받기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">PC에 저장하기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">메일 보내기</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true" id="pane-rent"
											aria-labelledby="tab-rent" class="el-tab-pane"
											style="display: none;">
											<div class="tabCont">
												<div class="contentsBox section01  el-row">
													<div class="board">
														<div class="el-row">
															<div class="legalDesBox ty2">
																<p>찜한차량은 최대 3개월동안 보관되며 판매완료시 삭제 됩니다.</p>
															</div>
															<div class="boardStatus">
																<span class="total">전체 <span class="pointColor">0</span>
																	건
																</span>
																<ul class="sorting">
																	<li class=""><a href="javascript:void(0)">선수금</a></li>
																	<li class=""><a href="javascript:void(0)">보증금</a></li>
																</ul>
																<div class="filter">
																	<div class="el-select">
																		<!---->
																		<div class="el-input el-input--suffix">
																			<!---->
																			<input type="text" readonly="readonly"
																				autocomplete="off" placeholder="기본정렬"
																				class="el-input__inner">
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
																			style="display: none;">
																			<div class="el-scrollbar" style="">
																				<div
																					class="el-select-dropdown__wrap el-scrollbar__wrap"
																					style="margin-bottom: -17px; margin-right: -17px;">
																					<ul
																						class="el-scrollbar__view el-select-dropdown__list">
																						<!---->
																						<li class="el-select-dropdown__item"><span>높은
																								가격순</span></li>
																						<li class="el-select-dropdown__item"><span>낮은
																								가격순</span></li>
																						<li class="el-select-dropdown__item"><span>적은
																								주행거리순</span></li>
																						<li class="el-select-dropdown__item"><span>많은
																								주행거리순</span></li>
																						<li class="el-select-dropdown__item"><span>낮은
																								연식순</span></li>
																						<li class="el-select-dropdown__item"><span>최근
																								연식순</span></li>
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
																</div>
															</div>
															<div class="mt16 el-row">
																<div class="boardListTable">
																	<div class="TblDefault mypageList">
																		<div
																			class="el-table el-table--fit el-table--scrollable-x el-table--enable-row-hover"
																			style="width: 100%;">
																			<div class="hidden-columns">
																				<div class="alignC"></div>
																				<div></div>
																				<div class="alignC"></div>
																			</div>
																			<div class="el-table__header-wrapper">
																				<table cellspacing="0" cellpadding="0" border="0"
																					class="el-table__header" style="width: 300px;">
																					<colgroup>
																						<col name="el-table_34_column_101" width="50">
																						<col name="el-table_34_column_102" width="80">
																						<col name="el-table_34_column_103" width="170">
																						<col name="gutter" width="0">
																					</colgroup>
																					<thead class="has-gutter">
																						<tr class="">
																							<th colspan="1" rowspan="1"
																								class="el-table_34_column_101   el-table-column--selection  is-leaf el-table__cell"><div
																									class="cell">
																									<label class="el-checkbox is-disabled"><span
																										class="el-checkbox__input is-disabled"><span
																											class="el-checkbox__inner"></span><input
																											type="checkbox" aria-hidden="false"
																											disabled="disabled"
																											class="el-checkbox__original" value=""></span>
																									<!----></label>
																								</div></th>
																							<th colspan="1" rowspan="1"
																								class="el-table_34_column_102     is-leaf el-table__cell"><div
																									class="cell"></div></th>
																							<th colspan="1" rowspan="1"
																								class="el-table_34_column_103     is-leaf el-table__cell"><div
																									class="cell"></div></th>
																							<th class="el-table__cell gutter"
																								style="width: 0px; display: none;"></th>
																						</tr>
																					</thead>
																				</table>
																			</div>
																			<div class="el-table__body-wrapper is-scrolling-left">
																				<table cellspacing="0" cellpadding="0" border="0"
																					class="el-table__body" style="width: 300px;">
																					<colgroup>
																						<col name="el-table_34_column_101" width="50">
																						<col name="el-table_34_column_102" width="80">
																						<col name="el-table_34_column_103" width="170">
																					</colgroup>
																					<tbody>
																						<!---->
																					</tbody>
																				</table>
																				<div class="el-table__empty-block"
																					style="height: 100%; width: 300px;">
																					<span class="el-table__empty-text"><div
																							class="nolist2">
																							<p>
																								<strong>찜한 렌트차량이 없습니다.</strong>
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
																<div class="paginationWrap">
																	<div class="searchTrigger box Inner01 DarkColor el-row">
																		<button class="button lineApply">삭제</button>
																	</div>
																	<div class="pagination -sm mT40">
																		<div class="pagination -sm">
																			<!---->
																			<!---->
																			<!---->
																		</div>
																	</div>
																	<div class="utilWrap">
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">문자로 받기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">PC에 저장하기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">메일 보내기</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!---->
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
					<div class="carRentWrap">
						<div>
							<div class="el-dialog__wrapper popup popCenter"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="차량 정보문자 받기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">차량 정보문자 받기</span>
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
					<div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="메일 보내기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">메일 보내기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">취소</button>
													<button class="button apply">보내기</button>
												</div>
											</div></span>
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
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div></div></span>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="메일 보내기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">메일 보내기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">취소</button>
													<button class="button apply">보내기</button>
												</div>
											</div></span>
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
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div></div></span>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup confirm noTitle"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
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
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup confirm noTitle"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
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
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup popCenter  active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button id="" class="button chosenApply">취소</button>
													<button id="mkt_intrstCarAplId" class="button apply">
														신청하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup popCenter  active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button id="" class="button chosenApply">취소</button>
													<button id="mkt_intrstCarAplId" class="button apply">
														신청하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup popCenter  active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button id="" class="button chosenApply">취소</button>
													<button id="mkt_intrstCarAplId" class="button apply">
														신청하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 447px; z-index: 2010; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">렌트</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				중고차렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트특가</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				신차렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				기사포함렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트지점</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트일반정비소</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트사고정비소</li>
		</ul>
	</div>
</body>
</html>