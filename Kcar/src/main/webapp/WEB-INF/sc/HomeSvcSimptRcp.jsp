<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/sc/sc_style.jsp"%>
<head>

<title>간편접수</title>

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

.modalopen {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: rgba(8, 8, 8, 0.75);
	z-index: 1;
}

.el-dialog__wrapper{
left: 75px;
}

.modal {
	background: white;
}
</style>

<script src="js/sellscript.js"></script>

<c:if test="${not empty msg }">
	<script>
		alert("${msg}");
	</script>
</c:if>

 <c:if test="${empty sessionScope.id }">
	<script>alert("로그인 후 사용해주세요");	window.close();</script>

</c:if>
</head>
<body>
	<div class="normal" id="modalbox"></div>

	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app">
				<div class="sellPopup popupWrap ">
					<div class="popup-header">
						<h3 class="title">내차팔기 신청하기</h3>
					</div>
					<div class="popBodyInr">
						<span><div class="activeInput radioBoxs">
								<div>
									<div class="formHolder ">
										<form class="el-form" id="form">
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<p class="subTitle">차량번호</p>
													<div class="input-with-select el-input el-input--suffix">

														<input type="text" autocomplete="off"
															placeholder="ex) 123다1234" maxlength="9"
															class="el-input__inner" name="s_r_num" id="s_r_num">

													</div>
													<div class="el-form-item__error" id="error1"></div>
												</div>
											</div>
											<div class="el-form-item">
												<label for="i_sCar_info" class="el-form-item__label">차량명</label>
												<div class="el-form-item__content">
													<div>
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" autocomplete="off"
																placeholder="예) 그랜저 IG" maxlength="50"
																class="el-input__inner" name="s_r_model" id="s_r_model">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
													<div class="el-form-item__error" id="error2"></div>
													<!---->
												</div>
											</div>
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<p class="subTitle">주행거리</p>
													<div class="ar el-input el-input--suffix">
														<!---->
														<input type="text" autocomplete="off"
															placeholder="예) 14,000" maxlength="7" input-type="number"
															inputmode="numeric" class="el-input__inner"
															name="s_r_distance" id="s_r_distance">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<i class="kmTxt">km</i>
													<div class="el-form-item__error" id="error3"></div>
													<!---->
												</div>
											</div>
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<p class="subTitle">신청자명</p>
													<div class="el-input el-input--suffix">
														<!---->
														<input type="text" autocomplete="off"
															value="${sessionScope.name}" maxlength="20"
															class="el-input__inner" disabled="disabled">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<!---->
												</div>
											</div>
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<p class="subTitle">휴대폰번호</p>
													<div class="el-input el-input--suffix">
														<!---->
														<input type="text" autocomplete="off"
															value="${sessionScope.tel }" maxlength="13"
															input-type="number" inputmode="numeric"
															class="el-input__inner" disabled="disabled">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<!---->
												</div>
											</div>
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<p class="subTitle">판매 시기</p>
													<div role="radiogroup" class="el-radio-group radioBoxs">
														<label role="radio" tabindex="0" class="el-radio-button"><input
															type="radio" tabindex="-1" autocomplete="off" value="0"
															class="el-radio-button__orig-radio" name="s_r_when"
															checked="checked"><span
															class="el-radio-button__inner">즉시</span></label> <label
															role="radio" tabindex="-1" class="el-radio-button"><input
															type="radio" tabindex="-1" autocomplete="off" value="7"
															name="s_r_when" class="el-radio-button__orig-radio"><span
															class="el-radio-button__inner">7일 이내</span></label> <label
															role="radio" tabindex="-1" class="el-radio-button"><input
															type="radio" tabindex="-1" autocomplete="off" value="14"
															class="el-radio-button__orig-radio" name="s_r_when"><span
															class="el-radio-button__inner">14일 이내</span></label> <label
															role="radio" tabindex="-1" class="el-radio-button"><input
															type="radio" tabindex="-1" autocomplete="off" value="30"
															class="el-radio-button__orig-radio" name="s_r_when"><span
															class="el-radio-button__inner">30일 이내</span></label> <label
															role="radio" tabindex="-1" class="el-radio-button"><input
															type="radio" tabindex="-1" autocomplete="off" value="40"
															class="el-radio-button__orig-radio" name="s_r_when"><span
															class="el-radio-button__inner">30일 이후</span></label>
													</div>
													<!---->

												</div>
											</div>
											<!---->
									</div>
									<div class="roundCheck">
										<div class="termsCheckWrap">
											<div class="item">
												<input class="form-check-input" type="checkbox" id="check1"
													name="check1"> <label class="form-check-label"
													for="check1"> <span></span> 개인정보 활용동의(필수)
												</label>
												<button type="button" onclick="modalopen1()"
													class="el-button txtButton inner2 el-button--text">
													<!---->
													<!---->
													<span> 보기 </span>
												</button>
											</div>
											<div class="item">
												<input class="form-check-input" type="checkbox" value="1"
													id="check2" name="s_r_marketing"> <label
													class="form-check-label" for="check2"> <span></span>
													마케팅 활용 문자동의(문자메세지)(선택)
												</label>
												<button type="button" onclick="modalopen2()"
													class="el-button txtButton inner2 el-button--text">
													<!---->
													<!---->
													<span> 보기 </span>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div></span>
						<div class="searchTrigger box btnApply el-row">
							<input type="button" onclick="nullcheck()" value="신청"
								class="button apply">
						</div>
						</form>
						<br>
					</div>
					<div class="carSellPop">
						<div>
							<div class="el-dialog__wrapper popup popCenter hauto"
								id="modal_1"
								style="width: 618px; height: 500px; z-index: 2001; display: none; top: 100px;">
								<div role="dialog" aria-label="개인정보 수집 및 이용 동의" class="modal">
									<div class="el-dialog__header">
										<span class="el-dialog__title">개인정보 수집 및 이용 동의</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn" onclick="modalclose1()">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<div class="el-dialog__body">
										<div class="popContent">
											<div class="msgWrap">
												<p class="desc">케이카㈜ 내차팔기 홈서비스 상담을 신청하시는 분께 수집하는 개인정보의
													항목, 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 충분히 읽어보신 후 동의 여부를 선택하여
													주시기 바랍니다.</p>
												<div class="table_ty01 mT20">
													<table>
														<colgroup>
															<col style="width: 33.33%;">
															<col style="width: 33.33%;">
															<col style="width: auto;">
														</colgroup>
														<thead>
															<tr>
																<th>항목</th>
																<th>목적</th>
																<th>보유기간</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>신청자명, 휴대폰 번호, 내차시세조회 서비스를 위해 기입한 모든 정보(차량번호,
																	소유자명, 차량정보 등)</td>
																<td>내차팔기 서비스를 위한 상담</td>
																<td>이용 목적과 관련된 사고조사, 분쟁해결, 민원처리, 법령상 의무이행을 위한 필요한
																	범위 내에서만 보유/이용</td>
															</tr>
														</tbody>
													</table>
												</div>
												<!---->
												<br>
												<!---->
											</div>
										</div>
										<!---->
									</div>
									<!---->
								</div>
							</div>
						</div>
					</div>

					<div>
						<div class="el-dialog__wrapper popup confirm noTitle" id='modal_2'
							style="width: 650px; height: 700px; z-index: 2001; display: none;">
							<div role="dialog" aria-label="마케팅 활용 및 수신 동의" class="modal">
								<div class="el-dialog__header">
									<span class="el-dialog__title">마케팅 활용 및 수신 동의</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn" onclick='modalclose1()'>
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<div class="el-dialog__body">
									<div class="popContent el-scrollbar">
										<div class="el-scrollbar__wrap"
											style="margin-bottom: -17px; margin-right: -17px;">
											<div class="el-scrollbar__view">
												<div class="msgWrap">
													<div class="TblDefault thBg">
														<table>
															<colgroup>
																<col style="width: 100%;">
															</colgroup>
															<thead>
																<tr>
																	<th>활용하는 개인정보의 항목</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>신청자명, 휴대폰 번호, 내차시세조회 서비스를 위해 기입한 모든 정보(차량번호,
																		소유자명, 차량정보 등)</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="TblDefault thBg">
														<table>
															<colgroup>
																<col style="width: 100%;">
															</colgroup>
															<thead>
																<tr>
																	<th>개인정보의 수집 이용 목적</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>새로운 서비스/ 신상품이나 이벤트 정보의 안내, 통계학적 특성에 따른 서비스 제공
																		및 광고 발송, 서비스의 유효성 확인, 이벤트 정보 및 참여기회 제공, 광고성 정보제공 접속빈도
																		파악, 회원의 서비스이용에 대한 통계</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="TblDefault thBg">
														<table>
															<colgroup>
																<col style="width: 100%;">
															</colgroup>
															<thead>
																<tr>
																	<th>개인정보의 보유 및 이용 기간</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>고객이 거부 의사를 밝힌 경우 삭제, 단 새로운 서비스/ 신상품이나 이벤트 정보에
																		제공을 위해서는 5년간 개인정보를 보유합니다.</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="TblDefault thBg">
														<table>
															<colgroup>
																<col style="width: 100%;">
															</colgroup>
															<thead>
																<tr>
																	<th>동의 거부에 따른 불이익의 내용</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>고객님께서는 동의 거부 권리가 있으며, 선택항목에 해당하는 정보를 입력하지 않으셔도
																		회원가입에 제한은 없습니다. 단, 동의 하지 않는 경우, 이벤트를 통해 제공될 수 있는 이익 및
																		혜택은 제공되지 않을 수 있습니다.</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
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
								<!---->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>