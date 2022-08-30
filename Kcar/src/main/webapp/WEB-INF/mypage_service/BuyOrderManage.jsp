<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<%@ include file="/WEB-INF/mypage/mypage_nav.jsp" %>
						</div>
						<div class="mypagCont mypageMain">
							<h3 class="subTitle">내차사기 주문관리</h3>
							<!---->
							<div class="contentsBox section01 mT64 el-row">
								<div class="sellTotal mB16">
									<ul>
										<li><strong></strong></li>
									</ul>
								</div>
								<div class="board">
									<div class="el-row">
										<div class="el-row">
											<div class="boardListTable ">
												<div class="TblDefault mypageList">
													<div
														class="el-table el-table--fit el-table--enable-row-hover"
														style="width: 100%;">
														<div class="hidden-columns">
															<div></div>
															<div></div>
															<div></div>
														</div>
														<div class="el-table__header-wrapper">
															<table cellspacing="0" cellpadding="0" border="0"
																						class="el-table__header" style="width: 905px;">
																						<colgroup>
																							<col name="el-table_1_column_1" width="50">
																							<col name="el-table_1_column_2" width="685">
																							<col name="el-table_1_column_3" width="170">
																							<col name="gutter" width="0">
																						</colgroup>
																						<thead class="has-gutter">
																							<tr class="">
																								<th colspan="1" rowspan="1"
																									class="el-table_1_column_1   el-table-column--selection  is-leaf el-table__cell"><div
																										class="cell">
																										
																									</div></th>
																								<th colspan="1" rowspan="1"
																									class="el-table_1_column_2     is-leaf el-table__cell"><div
																										class="cell"></div></th>
																								<th colspan="1" rowspan="1"
																									class="el-table_1_column_3     is-leaf el-table__cell"><div
																										class="cell"></div></th>
																								<th class="el-table__cell gutter"
																									style="width: 0px; display: none;"></th>
																							</tr>
																						</thead>
																					</table>
																				</div>
																				<div
																					class="el-table__body-wrapper is-scrolling-none">
																					<table cellspacing="0" cellpadding="0" border="0"
																						class="el-table__body" style="width: 905px;">
																						<colgroup>
																							<col name="el-table_1_column_1" width="50">
																							<col name="el-table_1_column_2" width="685">
																							<col name="el-table_1_column_3" width="170">
																						</colgroup>
																						<tbody>
																							<c:choose>
																								<c:when test="${list != null }">
																									<c:forEach var="car" items="${list }"
																										varStatus="status">
																										<tr class="el-table__row">
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_1  el-table-column--selection el-table__cell"><div
																													class="cell">
																													<div class="roundCheck">
																														
																													</div>
																												</div></td>
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_2   el-table__cell"><div
																													class="cell">
																													<div class="aboutOrder">
																														<p class="carVisualImg">
																															<img src="${car.c_photo }"
																																onerror="this.src='/images/common/bg_no_Img_sm.png'"
																																class="carVisual"> <span
																																class="car360Img"><img
																																src="/images/common/ico-360.svg"
																																alt="360"></span>
																														</p>
																														<div>
																															<div class="badges">
																																<!---->
																																<!---->
																															</div>
																															<p class="carName">${car.cb_brand }
																																${car.cb_m_model } ${car.c_fuel}</p>
																															<ul class="options">
																																<li>${car.c_year }<span
																																	class="lineH">｜</span> ${car.c_distance }km <span
																																	class="lineH">｜</span> ${car.c_model }
																																	<span class="lineH">｜</span>
																																	${car.st_name }
																																</li>
																															</ul>
																														</div>
																													</div>
																												</div></td>
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_3   el-table__cell"><div
																													class="cell">
																													<strong>${car.c_price }만원</strong>
																													
																												</div></td>
																										</tr>
																									</c:forEach>
																								</c:when>
																								<c:otherwise>
																									<div style="margin:110px;text-align: center; font-size: 20px; font-weight: bold;">
																										<span class="textRed">최근 본 차량이 없습니다.</span>
																									</div>
																								</c:otherwise>
																							</c:choose>
																							<c:if test="">
																							</c:if>

																							<!---->
																						</tbody>
																					</table>
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
									</div>
									<div class="pagination -sm mT40 ">
										<button type="button"
											class="el-button pagePrev el-button--default"
											style="display: none;">
											<!---->
											<!---->
											<span><span class="_hidden">이전</span></span>
										</button>
										<div class="pagingNum">
											<span class="textRed">1</span> / 1
										</div>
										<button type="button"
											class="el-button pageNext el-button--default"
											style="display: none;">
											<!---->
											<!---->
											<span><span class="_hidden">다음</span></span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div>
							<div
								class="el-dialog__wrapper popup popCenter wid480 hauto active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="취소 사유를 선택해주세요"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">취소 사유를 선택해주세요</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box maxW400 el-row">
													<button class="button apply">주문취소</button>
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
					<div class="carSellPop">
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
					<div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup hauto"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="필요서류 안내"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">필요서류 안내</span>
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
						<div>
							<div class="el-dialog__wrapper popup popCenter"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="dialog"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">결제내역</span>
										<button type="button"
											class="el-button popHeadBtn el-button--default" id="printBtn">
											<!---->
											<!---->
											<span> 인쇄하기 </span>
										</button>
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
						<div class="el-dialog__wrapper popup popCenter active"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="계약서 서명하기"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">계약서 서명하기</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div class="footerBtnWrap">
											<!---->
										</div></span>
								</div>
							</div>
						</div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup buyFullPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="자동차 매매계약서"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">자동차 매매계약서</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box maxW400 notPrint el-row">
													<button class="button apply">확인</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
							<!---->
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
							<div class="el-dialog__wrapper popup fullPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true"
									aria-label="중고자동차 성능·상태점검기록부" class="el-dialog"
									style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">중고자동차 성능·상태점검기록부</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<!---->
								</div>
							</div>
							<div class="carInfoWrap">
								<div class="el-dialog__wrapper popup fullPopup active"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="고지사항"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">고지사항</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box maxW320 el-row">
														<button type="button" class="button apply">닫기</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
							</div>
							<div class="el-dialog__wrapper popup fullPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="기본 진단 결과"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">기본 진단 결과</span>
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
						<div>
							<div class="el-dialog__wrapper popup popCenter wid480 hfix"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="dialog"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">카카오페이 전자 서명</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box el-row">
													<button class="button apply">전자서명 요청하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
							<div>
								<div class="el-row">
									<div class="el-dialog__wrapper popup popCenter wid640 hauto"
										style="display: none;">
										<div role="dialog" aria-modal="true" aria-label="dialog"
											class="el-dialog" style="margin-top: 15vh;">
											<div class="el-dialog__header">
												<span class="el-dialog__title">개인 정보 제3자 제공동의</span>
												<button type="button" aria-label="Close"
													class="el-dialog__headerbtn">
													<i class="el-dialog__close el-icon el-icon-close"></i>
												</button>
											</div>
											<!---->
											<div class="el-dialog__footer">
												<span class="dialog-footer"><div
														class="footerBtnWrap">
														<div class="searchTrigger box el-row">
															<button class="button apply">확인</button>
														</div>
													</div></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div class="el-dialog__wrapper popup popCenter wid480 hauto"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="dialog"
										class="el-dialog" style="margin-top: 15vh; padding: 0px;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">카카오페이 전자 서명</span>
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
									<div class="el-dialog__wrapper popup popCenter wid480 hauto"
										style="display: none;">
										<div role="dialog" aria-modal="true" aria-label="dialog"
											class="el-dialog" style="margin-top: 15vh; padding: 0px;">
											<div class="el-dialog__header">
												<span class="el-dialog__title pdB40">내차사기 홈서비스 계약서<br>
													전자서명 완료 확인
												</span>
												<button type="button" aria-label="Close"
													class="el-dialog__headerbtn">
													<i class="el-dialog__close el-icon el-icon-close"></i>
												</button>
											</div>
											<!---->
											<!---->
										</div>
									</div>
									<div class="el-dialog__wrapper popup popCenter wid480 hauto"
										style="display: none;">
										<div role="dialog" aria-modal="true" aria-label="dialog"
											class="el-dialog" style="margin-top: 15vh; padding: 0px;">
											<div class="el-dialog__header">
												<span class="el-dialog__title pdB40">내차사기 홈서비스 계약서<br>
													전자서명 완료 확인
												</span>
												<button type="button" aria-label="Close"
													class="el-dialog__headerbtn">
													<i class="el-dialog__close el-icon el-icon-close"></i>
												</button>
											</div>
											<!---->
											<!---->
										</div>
									</div>
									<div class="el-dialog__wrapper popup popCenter wid480 hauto"
										style="display: none;">
										<div role="dialog" aria-modal="true" aria-label="dialog"
											class="el-dialog" style="margin-top: 15vh; padding: 0px;">
											<div class="el-dialog__header">
												<span class="el-dialog__title pdB40">내차사기 홈서비스 계약서<br>
													전자서명 완료 확인
												</span>
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
						<div class="el-dialog__wrapper popup popCenter wid480 hauto"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="보험증서 업로드"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">보험증서 업로드</span>
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
								<div class="el-dialog__wrapper popup popCenter wid480 hauto"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="보험가입 시 유의사항"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">보험가입 시 유의사항</span>
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
						<div class="el-dialog__wrapper popup popCenter wid480 higAuto"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="계약서 보기"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">계약서 보기</span>
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
							<div class="el-dialog__wrapper popup fullPopup buyFullPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="자동차 매매계약서"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">자동차 매매계약서</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box maxW400 notPrint el-row">
													<button class="button apply">확인</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
							<!---->
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
							<div class="el-dialog__wrapper popup fullPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true"
									aria-label="중고자동차 성능·상태점검기록부" class="el-dialog"
									style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">중고자동차 성능·상태점검기록부</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<!---->
								</div>
							</div>
							<div class="carInfoWrap">
								<div class="el-dialog__wrapper popup fullPopup active"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="고지사항"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">고지사항</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box maxW320 el-row">
														<button type="button" class="button apply">닫기</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
							</div>
							<div class="el-dialog__wrapper popup fullPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="기본 진단 결과"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">기본 진단 결과</span>
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
				</div>
				<%@ include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 254px; z-index: 2002; display: none;"
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
</body>
</html>