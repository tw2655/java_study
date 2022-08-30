<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D">
<head>
<title>폐차 신청</title>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/sc/sc_style.jsp"%>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<style>
.form-select {
	width: 393px;
	height: 56px;
}

.selectoption {
	display: inline-block;
	width: 25px;
	height: 25px;
	background: url('/images/icon/icon-radio-default.svg') no-repeat 0 0px/contain;
}

input[type=radio]:checked+span {
	background: url('/images/icon/icon-radio-checked.svg') no-repeat 0 0px/contain;
}
</style>

<script src="js/sellscript.js"></script>

<script>
	var req;
	function ajaxmodel() {
		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post','/ScrpcaApl');
		req.send(document.getElementById('brand').value);

	}

	function textChange() {
		if (req.readyState == 4 && req.status == 200) {
			document.getElementById('tbody').innerHTML = req.responseText;
		}
	}
	function nullcheck() {
		var array=document.getElementsByClassName('form-select');
		if(array[0].value == 'noselect' || array[1].value == 'noselect') {
			alert('모델과 제조사를 선택해 주세요')
			document.getElementById('noticeBox').style.display = 'none';
		}
		else document.getElementById('noticeBox').style.display = 'block';
	}
</script>

</head>
<body>

	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app">
				<div class="sellPopup popupWrap ">
					<div class="popup-header">
						<h3 class="title">신청만 하면 끝! 간편한 폐차 서비스</h3>

					</div>
					<div class="popBodyInr">
						<div class="shadowBox">
							<div class="shTxtWrapCent">
								<p class="shTit">KS폐차산업(주)</p>
								<p class="shTxt">010-3399-7129 / 010-7129-8297</p>

							</div>
						</div>
						<ul class="stepProc">
							<li><em class="stepIcon"><i class="icon-sell process1"></i></em>
								<span class="stepNum">STEP 1</span>
								<p>전화 상담, 폐차 신청</p></li>
							<li><em class="stepIcon"><i class="icon-sell process2"></i></em>
								<span class="stepNum">STEP 2</span>
								<p>
									등록원부 후<br>무료 견인
								</p></li>
							<li><em class="stepIcon"><i class="icon-sell process3"></i></em>
								<span class="stepNum">STEP 3</span>
								<p>폐차 금액 지급</p></li>
							<li><em class="stepIcon"><i class="icon-sell process4"></i></em>
								<span class="stepNum">STEP 4</span>
								<p>무료 말소 대행</p></li>
						</ul>
						<div class="formArea">
							<ul class="partSelect">
								<li><p class="titLabel">모델명</p>
									<div class="itemWrap">
										<div class="el-select">
											<!---->
											<div class="el-input el-input--suffix">
												<select class="form-select" aria-label="Brand" id="brand"
													onchange="ajaxmodel()">
													<option  value='noselect' selected>제조사</option>
													<c:forEach var="brand" items="${sessionScope.list}">
														<option value='${brand }'>${brand }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="el-select">
											<!---->
											<div class="el-input el-input--suffix" id="tbody">
												<select class='form-select' aria-label='Model'>
													<option value='noselect'>모델</option>
												</select>
											</div>
										</div>
									</div></li>
								<li><p class="titLabel">연식</p>
									<div class="el-select">
										<!---->
										<div class="el-input el-input--suffix">
											<!---->
											<div class="el-input el-input--suffix">
												<select class="form-select form-select-sm"
													aria-label=".form-select-sm example"
													style="display: block; min-width: 800px;">
													<option selected>2022</option>
													<option value="2021">2021</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2021">2021</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2021">2021</option>
													<option value="2016">2026</option>
													<option value="2015">2015</option>
													<option value="2021">2021</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2021">2021</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2021">2021</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2021">2021</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2021">2021</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2021">2021</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2021">2021</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2004">2004</option>
													<option value="2000">2000</option>
													<option value="2021">2021</option>
													<option value="1999">1999</option>

												</select>
											</div>
										</div>

									</div></li>
							</ul>
							<ul class="partRadio">
								<li><p class="titLabel">운행가능 여부</p>
									<div>
										<div role="radiogroup" class="el-radio-group">
											<label role="radio" aria-checked="true" tabindex="0"
												class="el-radio is-checked"><span
												class="el-radio__input is-checked"></span><input
												type="radio" aria-hidden="true" tabindex="-1"
												autocomplete="off" value="1" checked="checked"
												class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													가능 <!---->
											</span></label> <label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="0" class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													불가능 <!---->
											</span></label>
										</div>
									</div></li>
								<li><p class="titLabel">변속기</p>
									<div>
										<div role="radiogroup" class="el-radio-group">
											<label role="radio" aria-checked="true" tabindex="0"
												class="el-radio is-checked"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="오토" checked="checked" class="el-radio__original"
												name="select1_5"><span class="selectoption"></span><span
												class="el-radio__label"> 자동 <!----></span></label> <label
												role="radio" tabindex="-1" class="el-radio"><input
												type="radio" aria-hidden="true" tabindex="-1"
												autocomplete="off" value="수동" class="el-radio__original"
												name="select1_5"><span class="selectoption"></span><span
												class="el-radio__label"> 수동 <!---->
											</span></label>
										</div>
									</div></li>
								<li><p class="titLabel">알루미늄 휠</p>
									<div>
										<div role="radiogroup" class="el-radio-group">
											<label role="radio" aria-checked="true" tabindex="0"
												class="el-radio is-checked"><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="1" checked="checked" class="el-radio__original"
												name="select2"><span class="selectoption"></span><span
												class="el-radio__label"> 있음 <!---->
											</span></label> <label role="radio" tabindex="-1" class="el-radio"><input
												type="radio" aria-hidden="true" tabindex="-1"
												autocomplete="off" value="0" class="el-radio__original"
												name="select2"><span class="selectoption"></span><span
												class="el-radio__label"> 없음 <!----></span></label>
										</div>
									</div></li>
								<li><p class="titLabel">차량의 현재 위치</p>
									<div>
										<div role="radiogroup" class="el-radio-group">
											<label role="radio" aria-checked="true" tabindex="0"
												class="el-radio is-checked"><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="001" checked="checked" class="el-radio__original"
												name="select3"><span class="selectoption"></span><span
												class="el-radio__label"> 수도권(서울/경기/인천) <!---->
											</span></label> <label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"><input type="radio"
													aria-hidden="true" tabindex="-1" autocomplete="off"
													value="002" class="el-radio__original" name="select3"><span
													class="selectoption"></span></span><span class="el-radio__label">
													수도권 외 지역 <!---->
											</span></label> <label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"><input type="radio"
													aria-hidden="true" tabindex="-1" autocomplete="off"
													value="003" class="el-radio__original" name="select3"><span
													class="selectoption"></span></span><span class="el-radio__label">
													제주도 <!---->
											</span></label>
										</div>
									</div></li>
							</ul>
						</div>
						<div class="roundbox mt40">
							<p class="guideTxt mT0">
								본 서비스는 K Car와는 무관하며 해당 업체가 직접 운영, 관리하고 있습니다.<br> 업체담당자를 통해
								폐차 가능 여부 및 스케쥴을 확인하세요.
							</p>
						</div>
						<div class="searchTrigger box btnApply el-row">
							<button class="button apply" onclick="nullcheck()">폐차 금액 조회</button>
						</div>
						<div class="noticeBox mB40" style="display: none;" id="noticeBox">
							<strong class="subTitle2">폐차 금액</strong>
							<p>
								<span>운행불가 차량은 상담 후 폐차 금액이 결정됩니다.</span><br> 자세한 내용은
								KS폐차산업(주)(<span class="underLine">010-3399-7129</span>, <span
									class="underLine">010-7129-8297</span>)으로 문의해 주세요.<br>※ 모든
								차량의 단가는 정품 촉매 기준입니다.
							</p>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>



	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<div class="el-select-dropdown el-popper"
		style="min-width: 418.8px; transform-origin: center top; z-index: 2001; display: none;">
		<div class="el-scrollbar" style="display: none;">
			<div class="el-select-dropdown__wrap el-scrollbar__wrap"
				style="margin-bottom: -17px; margin-right: -17px;">
				<ul class="el-scrollbar__view el-select-dropdown__list"></ul>
			</div>
			<div class="el-scrollbar__bar is-horizontal">
				<div class="el-scrollbar__thumb" style="transform: translateX(0%);"></div>
			</div>
			<div class="el-scrollbar__bar is-vertical">
				<div class="el-scrollbar__thumb" style="transform: translateY(0%);"></div>
			</div>
		</div>
		<p class="el-select-dropdown__empty">데이터 없음</p>
		<div x-arrow="" class="popper__arrow" style="left: 35px;"></div>
	</div>
</body>
</html>