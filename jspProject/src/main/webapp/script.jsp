<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>%>
<c:url var="root" value="/" />
<script type="text/javascript"
	src="${root }js/library/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${root }js/library/jquery.lazyload.js"></script>
<script type="text/javascript" src="${root }js/library/iscroll.js"></script>

<!-- Service -->
<script type="text/javascript" src="${root }js/service/common.js"></script>
<script type="text/javascript"
	src="${root }js/service/geolocation.js"></script>

<!-- Module -->
<!-- 
<script type="text/javascript" src="js/modules/dialogPopup.js"></script>
 -->
<!-- Page Script -->
<script type="text/javascript"
	src="${root }js/library/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="${root }js/library/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript"
	src="${root }js/library/jquery.comiseo.daterangepicker.min.js"></script>
<script type="text/javascript"
	src="${root }js/library/swiper.min.js"></script>
<script type="text/javascript"
	src="${root }js/library/owl.carousel.min.js"></script>
<script type="text/javascript" src="${root }js/library/moment.js"></script>
<script type="text/javascript" src="${root }js/library/vue.min.js"></script>

<script type="text/javascript" src="${root }js/service/datepick.js"></script>
<script type="text/javascript"
	src="${root }js/service/product.detail2.js"></script>
<!-- 
 -->
<script type="text/javascript"
	src="${root }js/service/product.async.js"></script>
<script type="text/javascript" src="${root }js/service/main.js"></script>
<!-- Body Spinner -->

<!-- <div class="spinner show" style="display: none;"> -->
<!-- 	<span></span> -->
<!-- </div> -->

<div style="display: none;">
	<!-- 네이버 프리미엄 로그 분석(https://yeogirnd.atlassian.net/browse/SD-320)-->

	<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>

	<script>

		const appsflyer = (function() {

			// 마케팅서비스
			const marketingServices = {
				yeogi: { number: 1, code: 'ye', },
				activity: { number: 2, code: 'ac', },
				daumDA: { number: 3, code: 'du', },
				channelingCPC: { number: 4, code: 'ns', },
				yeogiWebCPS: { number: 5,  code: 'yp', },
			}

			// 대그룹
			const largeGroups = {
				channelingEvent: { number: 56, code: 'ce', },
				kakaoShopping: { number: 49, code: 'ke', },
				mangoPlate: { number: 44, code: 'mp', },
				naverShopping: { number: 17,  code: 'ne', },
				quizMedia: { number: 58, code: 'qu', },
				testGroup: { number: 45, code: 'te', },
				tmap: { number: 32, code: 'tm', },
				triple: { number: 33, code: 'tr', },
			}

			const adSet = {
				top : 'top',
				bottom: 'bottom',
			}

			const targetUrls = {
				baseURL: 'https://goodchoice.onelink.me/C4wC/',
				species: {
					channeling: {
						top: {
							pathVariable: '2a0cfe91',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore) {
								return marketingServiceNumber === marketingServices.channelingCPC.number &&
										containsMarketingCodeAndLargeCode(
											[largeGroups.channelingEvent, largeGroups.mangoPlate, largeGroups.tmap, largeGroups.triple],
											marketingCodesTrailingUnderscore,
											marketingServices.channelingCPC.code
										)
							},
						}
					},
					kakaoShopping: {
						top: {
							pathVariable: '873b4fab',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore) {
								return marketingServiceNumber === marketingServices.channelingCPC.number &&
										containsMarketingCodeAndLargeCode(
											[largeGroups.kakaoShopping],
											marketingCodesTrailingUnderscore,
											marketingServices.channelingCPC.code
										)
							}
						},
					},
					naverShopping: {
						top: {
							pathVariable: '79261d0c',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore) {
								return marketingServiceNumber === marketingServices.channelingCPC.number &&
										containsMarketingCodeAndLargeCode(
											[largeGroups.naverShopping],
											marketingCodesTrailingUnderscore,
											marketingServices.channelingCPC.code
										)
							}
						},
					},
					etc: {
						top: {
							pathVariable: 'dcc68a19',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) {
								return !isBottomPopup;
							}
						},
						bottom: {
							pathVariable: '307f137',
							match: function(marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) {
								return isBottomPopup;
							}
						}
					},
				}
			}

			function getTopOrBottomKey(isBottomPopup) {
				return isBottomPopup ? adSet.bottom : adSet.top;
			}

			function getMatchedInfo(species, marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) {
				return Object.keys(species)
						.map(function(species) { return targetUrls.species[species][getTopOrBottomKey(isBottomPopup)]; })
						.filter(function(type) { return !!type })
						.filter(function(type) { return type.match(marketingServiceNumber, marketingCodesTrailingUnderscore, isBottomPopup) })[0];
			}

			function containsMarketingCodeAndLargeCode(largeGroups, marketingCodesTrailingUnderscore, marketingServiceCode,) {
				return largeGroups.some(function(largeGroup) {
					return marketingCodesTrailingUnderscore.indexOf(marketingServiceCode + '_' + largeGroup.code + '_') != -1;
				})
			}

			return {
				marketingServices: marketingServices,
				largeGroups: largeGroups,
				targetUrls: targetUrls,
				getTopOrBottomKey: getTopOrBottomKey,
				getMatchedInfo: getMatchedInfo,
			}
		})();

		/**
		 * 앱스플라이어 마케팅 url
		 */
		function goAppStore(dialogCheck) {
			const isBottomPopup = !!dialogCheck;
			const kcode = getCookie('k_code');
			const kcodeSplit = kcode.split('^'); // 2.0: mkt_code^msid^device_type , 1.0: mkt_code only
			const marketingCodesTrailingUnderscore = kcodeSplit[0]; // ex: ns_ce_... ns(마케팅 서비스 code)_ce(대그룹 code)
			const marketingServiceNumber = Number(kcodeSplit[1]); // 마케팅 서비스 number

			location.href = appsflyer.targetUrls.baseURL +
						appsflyer.getMatchedInfo(
							appsflyer.targetUrls.species,
							marketingServiceNumber,
							marketingCodesTrailingUnderscore,
							isBottomPopup
						).pathVariable;
		}

		// 쿠키 생성
		function setCookie(cName, cValue, cDay){
			var expire = new Date();
			expire.setDate(expire.getDate() + cDay);
			cookies = cName + '=' + escape(cValue) + '; path=/ ';
			if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
			document.cookie = cookies;
		}

		// 쿠키 가져오기
		function getCookie(cName) {
			cName = cName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cName);
			var cValue = '';
			if(start != -1){
				start += cName.length;
				var end = cookieData.indexOf(';', start);
				if(end == -1)end = cookieData.length;
				cValue = cookieData.substring(start, end);
			}
			return unescape(cValue);
		}

		if (getCookie('marketing_type') != '') {
			if (getCookie('marketing_type') == 'pay') {
				var _nasa={};
				_nasa["cnv"] = wcs.cnv("1",getCookie('marketing_price')); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
			} else {
				var _nasa={};
				_nasa["cnv"] = wcs.cnv("2","1"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
			}

			//쿠키 삭제
			setCookie('marketing_price', '', -1);
			setCookie('marketing_type', '', -1);
		}
	</script>
	<script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-77719807-2', 'auto');
        ga('send', 'pageview');
    </script>

	<!-- Daum  중요 용도가 아니라면 주석처리 여부 결정 문제 없을시 삭제
    <script type="text/javascript">
        var roosevelt_params = {
            retargeting_id:'iaYgM3OBV.Uv.QOMJv.bqg00',
            tag_label:'BTecd8srQJ2G5hhOmZIanw'
        };
    </script>
    <script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script -->

	<!-- Google Code for &#50668;&#44592;&#50612;&#46412;_&#50937; Conversion Page -->

	<script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 964418007;
        var google_conversion_language = "en";
        var google_conversion_format = "3";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "6YMHCM_i81wQ17PvywM";
        var google_remarketing_only = false;
        /* ]]> */
    </script>
	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js"></script>

	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//www.googleadservices.com/pagead/conversion/964418007/?label=6YMHCM_i81wQ17PvywM&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>

	<script type="text/javascript">
		if (!wcs_add) var wcs_add={};
		wcs_add["wa"] = "s_4540c185467c";
		if (!_nasa) var _nasa={};
		wcs.inflow("goodchoice.kr");
		wcs_do(_nasa);
	</script>

	<!-- Global site tag (gtag.js) - Google AdWords: 802163829 -->

	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-802163829"></script>
	<script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'AW-802163829');

        // Event snippet for WEB_다운로드_버튼 conversion page In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button.
        
        $(function(){
            $('.appdown_link').on('click',function(){
                gtag('event', 'conversion', {
                    'send_to': 'AW-802163829/jxc6CN22x4MBEPWYwP4C'
                });
            });
        });
	</script>

	<!-- 채널제출 -->

	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.goodchoice.kr"> <a
		itemprop="sameAs" href="https://www.facebook.com/goodchoiceofficial"></a>
		<a itemprop="sameAs"
		href="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere"></a>
		<a itemprop="sameAs"
		href="https://itunes.apple.com/kr/app/id884043462"></a> <a
		itemprop="sameAs" href="https://post.naver.com/withinnovation"></a> <a
		itemprop="sameAs"
		href="https://www.youtube.com/channel/UCLI1HOVJdhWdVl9pT__g2Zw"></a>
	</span>
</div>
