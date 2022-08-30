<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@include file="brandCarList_style.jsp"%>
<meta data-n-head="ssr" charset="utf-8">
<meta data-n-head="ssr" name="viewport"
	content="width=device-width, initial-scale=1">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="og-title" name="og:title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카 ">
<meta data-n-head="ssr" data-hid="og-description" name="og:description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="og-image" name="og:image"
	content="https://api.kcar.com/BASE/kcar_share_kakao.jpg">
<meta data-n-head="ssr" data-hid="og-type" name="og:type"
	content="website">
<meta data-n-head="ssr" data-hid="twitter-card" name="twitter:card"
	content="summary_large_image">
<meta data-n-head="ssr" data-hid="twitter-title" name="twitter:title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카">
<meta data-n-head="ssr" data-hid="twitter-description"
	name="twitter:description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="twitter-image-src"
	name="twitter:image:src"
	content="https://api.kcar.com/BASE/kcar_share_kakao.jpg">
<meta data-n-head="ssr" name="format-detection" content="telephone=no">

<meta data-n-head="ssr" data-hid="title" name="title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카 ">
<meta data-n-head="ssr" data-hid="keywords" name="keywords"
	content="중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차 ">
</head>
<body style="">
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
				<!-- header start -->
				<%@include file="/WEB-INF/default/header.jsp" %>
				<!-- header end -->
				<div class="rentWrap contWrap" style="overflow-y: hidden;">
					<div class="hsBanner carBrandBanner01"
						style="background-image: url(&quot;/images/carBrand/visual/visual_volvo.jpg&quot;);">
						<div>
							<p class="title" style="font-size: 60px;">볼보 인증중고차</p>
							<p class="desc">
								볼보가 직접 품질 점검한 인증중고차 중<br> 믿을 수 있는 차량을 엄선해 선보입니다
							</p>
						</div>
					</div>
					<div class="bannerLine">
						<p>브랜드 인증 중고차는 각 수입차 브랜드의 공식 딜러사를 통해 직접 판매됩니다</p>
					</div>
					<div class="containerWrap el-row">
						<div class="listLine">
							<ul>
								<li class="carTotal">총 <span class="textRed">17</span>대
								</li>
								<li class="listBtn"><div
										class="searchTrigger box multBtn el-row">
										<button class="button lineApply">모델/세부모델선택</button>
									</div>
									<div class="el-select listSelect">
										<!---->
										<div class="el-input el-input--suffix">
											<!---->
											<input type="text" readonly="readonly" autocomplete="off"
												placeholder="최근 연식순" class="el-input__inner">
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
											style="display: none; min-width: 160px;">
											<div class="el-scrollbar" style="">
												<div class="el-select-dropdown__wrap el-scrollbar__wrap"
													style="margin-bottom: -21px; margin-right: -21px;">
													<ul class="el-scrollbar__view el-select-dropdown__list">
														<!---->
														<li class="el-select-dropdown__item"><span>기본정렬</span></li>
														<li class="el-select-dropdown__item"><span>최근
																연식순</span></li>
														<li class="el-select-dropdown__item"><span>낮은
																연식순</span></li>
														<li class="el-select-dropdown__item"><span>적은
																주행거리순</span></li>
														<li class="el-select-dropdown__item"><span>많은
																주행거리순</span></li>
														<li class="el-select-dropdown__item"><span>낮은
																가격순</span></li>
														<li class="el-select-dropdown__item"><span>높은
																가격순</span></li>
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
									<button type="button"
										class="el-button listIs mL8 el-button--default"
										aria-pressed="false">
										<!---->
										<!---->
										<span><i class="is_wide"></i><span class="_hidden">리스트형버튼</span></span>
									</button></li>
							</ul>
							<ul>
								<!---->
							</ul>
						</div>
						<div>
							<div>
								<li class="roundCheck flexCon"><div role="group"
										aria-label="checkbox-group" class="el-checkbox-group">
										<label class="el-checkbox"><span
											class="el-checkbox__input"><span
												class="el-checkbox__inner"></span><input type="checkbox"
												aria-hidden="false" class="el-checkbox__original"
												value="GNRL"></span><span class="el-checkbox__label">
												일반차량 <!---->
										</span></label> <label class="el-checkbox"><span
											class="el-checkbox__input"><span
												class="el-checkbox__inner"></span><input type="checkbox"
												aria-hidden="false" class="el-checkbox__original"
												value="LESE"></span><span class="el-checkbox__label">
												리스차량 <!---->
										</span></label>
									</div></li>
							</div>
							<div class="carListWrap mT20">
							
							
							<%-- <c:forEach var="brandCar" items="${brandCarList }">
								<div class="carListBox" style="cursor: pointer;">
									<!---->
									<div class="carListImg" style="cursor: pointer;">
										<!---->
										<div>
											<img
												src="https://img.kcar.com/BrandCertificationMall/carpicture10/pic6070/kcarM_60702118_001.jpg?1659496931755"
												alt="챠량이미지"
												onerror="this.src='/images/search/bg_no_Img_lg.png'"
												loading="lazy">
										</div>
										<ul class="listViewBtn">
											<li><button type="button"
													class="el-button el-button--default icon icoFav"
													id="mkt_brandAddWish">
													<!---->
													<!---->
													<span><span class="_hidden">찜하기</span></span>
												</button></li>
										</ul>
									</div>
									<ul class="listViewLabel">
										<!---->
										<!---->
									</ul>
									<div class="detailInfo">
										<div class="carName">
											<h3>
												${brandCar.cb_brand } &nbsp; ${brandCar.cb_m_model } &nbsp; ${brandCar.c_fuel }
											</h3>
										</div>
										<div class="carListFlex">
											<div class="carExpIn">
												<p class="carExp">${brandCar.c_price } 만원</p>
											</div>
											<p class="detailCarCon">
												<span class="block">${brandCar.c_year }</span>
												<span>${brandCar.distance } km</span>
												<span>${brandCar.c_fuel }</span>
												<span>${brandCar.st_name }</span>
											</p>
										</div>
										
										
										<ul class="infoTooltip">
											<!---->
											<!---->
											<c:forEach var="carInfoTag" items="${brandCar.brandCarInfoTag }">
												<li><button type="button"
													class="el-button el-tooltip yellowLabel item el-button--default"
													aria-describedby="el-tooltip-8882" tabindex="0">
													<!---->
													<!---->
													<span> ${carInfoTag } </span>
												</button></li>
											</c:forEach>
											<li><button type="button"
													class="el-button el-tooltip yellowLabel item el-button--default"
													aria-describedby="el-tooltip-8882" tabindex="0">
													<!---->
													<!---->
													<span> 브랜드 인증 </span>
												</button></li>
											<!---->
											<!---->
										</ul>
									</div>
								</div>
							</c:forEach> --%>
							</div>
						</div>
						
						
						<!-- 페이징처리 위치 -->
							<div class="pagination -sm">
								<div class="pagination -sm">
									<!---->
									<div class="pagingNum">
										<span class="textRed">1</span> / 2
									</div>
									<button type="button"
										class="el-button pageNext el-button--default">
										<!---->
										<!---->
										<span><img
											src="/images/common/pagenation-btn-right.svg" alt="다음"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="el-dialog__wrapper popup popCenter wid480 hfix active"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="모델 선택"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">모델 선택</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div class="footerBtnWrap">
											<div class="searchTrigger box maxW400 el-row">
												<button class="button apply">차량보기(0대)</button>
											</div>
										</div></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- footer start -->
				<%@include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer end -->
			</div>
		</div>
	</div>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 253px; z-index: 2010; display: none;"
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