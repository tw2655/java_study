<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>내차팔기 고객후기</title>
<%@include file="/WEB-INF/default/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var req;
	function popopen(num){
		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post','/detail');
		req.send(num);

		document.getElementById('modal').style.display='block';
		document.getElementById('modalbox').className = 'modalopen';  
	}
	
	function textChange() {
		if (req.readyState == 4 && req.status == 200) {
		
			var jsonData = JSON.parse(req.responseText); //String 데이터를 JSON 자료형으로 변환
			document.getElementById('detailtitle').innerHTML=jsonData.title;
			document.getElementById('detailmodel').innerHTML=jsonData.model;
			document.getElementById('detailcontent').innerHTML=jsonData.content;
			document.getElementById('detailimg').src=jsonData.image;
		}
	}
	
	function modalclose(){
		document.getElementById('modal').style.display='none';
		document.getElementById('modalbox').className = 'normal';
	}
</script>
<style>
.modalopen {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: rgba(8, 8, 8, 0.75);
	z-index: 1;
}
</style>

</head>
<body>
	<noscript data-n-head="ssr" data-hid="gtm-noscript" data-pbody="true">
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZPHVG&"
			height="0" width="0" style="display: none; visibility: hidden"
			title="gtm"></iframe>
	</noscript>
	<div class="normal" id="modalbox"></div>
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
									<span class="wtNormal">내차팔기 홈서비스가</span> 신뢰받는 이유
								</h1>
							</div>
							<c:forEach var="review" items="${list}">

								<div class="reviewList">
									<ul>
										<li class="reviewListCon" onclick="popopen(${review.s_r_num})"><label
											class="carLabel"> ${review.s_r_model} </label> <a
											class="el-link el-link--default is-underline"> <!----> <span
												class="el-link--inner"><h5
														style="word-break: break-all;">${review.s_r_title}</h5>
													<p style="word-break: break-all;">${review.s_r_content}</p>
													<span> ${review.s_r_date} </span></span> <!---->
										</a></li>
										<li class="reviewListImg reviewListImg1"><img
											src="${review.s_r_image }" alt="이미지1"></li>
										<!---->
									</ul>
								</div>
							</c:forEach>
							<div class="pagination -sm">
								<!---->
								<c:if test="${currentPage != 1 }">

									<span><a href="SellCustReview?currentPage=${currentPage - 1 }"> <img src="/images/common/pagenation-btn-left.svg"
										alt="이전"></span></a>
								</c:if>

								<div class="pagingNum">
									<span class="textRed">${currentPage }</span> / ${totalPage }
								</div>
								<c:if test="${currentPage != totalPage }">
									<span><a href="SellCustReview?currentPage=${currentPage + 1 }"><img src="/images/common/pagenation-btn-right.svg"
										alt="다음"></a></span>
								</c:if>
							</div>
						</div>
					</div>
					<div>
						<div class="el-dialog__wrapper popup popCenter"
							style="z-index: 2052; display: none;" id="modal">
							<div role="dialog" aria-modal="true" aria-label="내차팔기 고객후기"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">내차팔기 고객후기</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn" onclick="modalclose()">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<div class="el-dialog__body">
									<div class="popContent el-scrollbar">
										<div class="el-scrollbar__wrap"
											style="margin-bottom: -17px; margin-right: -17px;">
											<div class="el-scrollbar__view">
												<div class="carSellPopup">
													<h5 style="word-break: break-all;" id="detailtitle"></h5>
													<span id="detailmodel"> </span>
													<p style="word-break: break-all;" id="detailcontent"></p>
													<div class="carSellPopupImg">
														<img id="detailimg" src="" alt="이미지1">
													</div>
													<!---->
													<!---->
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
								</div>
								<!---->
							</div>
						</div>
					</div>
				</div>
				<%@include file="/WEB-INF/default/footer.jsp"%>
			</div>
		</div>
	</div>

</body>
</html>