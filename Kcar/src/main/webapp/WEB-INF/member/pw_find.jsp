<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>

</head>

<%@ include file="home_style.jsp" %>
<body>

	
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app">
				<div class="contentsWrap">
					
					<div class="logListWrap loginCenter">
						<h1 class="kcarLogo" style="cursor: pointer;">K car logo</h1>
																	<form action="pw_find" method="post">
						<div class="el-form-item passArea">
																	<!---->
															
																	<div class="el-form-item__content">
																		<div class="titLabel">새 비밀번호</div>
																		<div class="el-row">
																			<div class="el-input el-input--suffix">
																				<!---->
																				<input type="password" 
																					name="m_pw" id="m_pw"
																					placeholder="비밀번호 입력" class="el-input__inner">
																				<!---->
																				<span class="el-input__suffix"><span
																					class="el-input__suffix-inner">
																						<!---->
																						<!---->
																						<!---->
																						<!---->
																				</span>
																				<!----></span>
																				<!---->
																				<!---->
																			</div>
																			<div class="annotation">※ 영문 대/소문자, 숫자,
																				특수문자(`~!@#$%^*+=-_만 허용)를 조합해서 입력해 주세요.(8~20자)</div>
																		</div>
																		<!---->
																	</div>
																</div>
																<div class="el-form-item passArea">
																	<!---->
																	<div class="el-form-item__content">
																		<div class="titLabel">새로운 비밀번호 확인</div>
																		<div class="el-row">
																			<div class="passCheck el-input el-input--suffix">
																				<!---->
																				<input type="password" 
																				id="pwOk" name="pwOk"
																					placeholder="비밀번호 재입력" class="el-input__inner">
																				<!---->
																				<span class="el-input__suffix"><span
																					class="el-input__suffix-inner">
																						<!---->
																						<!---->
																						<!---->
																						<!---->
																				</span>
																				<!----></span>
																				<!---->
																				<!---->
																			</div>
																			<div class="annotation"></div>
																		</div>
																		<!---->
																	</div>
																</div>
						
																<div class="searchTrigger box maxW840 el-row">
															
															<button class="button apply" >정보수정
															</button>
														</div>
																</form>
					</div>
					</div>
						
					
					<div class="descFooter">
						※ 본인인증이 어려우시다면, K Car 고객센터(<span class="tel">1588-5455</span>)로
						문의해 주세요.
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>