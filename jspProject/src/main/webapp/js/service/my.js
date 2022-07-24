lazyload(); // Lazyload

$(function(){
	// 다시예약
	$('.btn_re button').click(function(){
		var ano     = $(this).data('ano');
		var adcno   = $(this).data('adcno');
		var date    = $(this).data('date');
		var rStr    = randomString();
		location.href = '/product/detail?ano='+ano+'&adcno='+adcno+'&sel_date='+date+'&sel_date2='+date+'&_search='+rStr;
	});

	// 예약상세환불
	$('button.gra_red[data-refund]').click(function(){
		var refundType = $(this).data('refund');
		close_layer();
		pop_twobtn('refund_el','<p>예약취소/연기는 1일1회만 가능하며 사용된 쿠폰은 소멸됩니다.(5박에 1박 쿠폰 제외)</p><p>예약취소는 신중히 생각하시고 진행해 주시기 바랍니다.</p><p>예약취소를 하시겠습니까?</p>','아니오',(refundType==1 ? '예약 취소 요청': '예약 연기 요청'),'close_layer()','refund_action('+refundType+')');
	});

	//  1:1문의 탭
	$('.inquiry .tab a').each(function(e){
		$(this).click(function(i){
			i.preventDefault();
			$(this).addClass('active');
			$('.tab_each').hide();
			$('.tab_each').eq(e).show();
		});
	});
});
// 예약환불 및 연기
function refund_action(refund){
	var refundType = refund;
	$.ajax({
		type: 'POST',
		async: false,
		cache: false,
		url: '/my/setReserveCancelPro_non',
		dataType: 'json',
		data: {'do_no': $('input[name=cancel_do_no]').val()},
		success: function(data) {
			close_layer();
			var outputMsg = refundType==1 ? "환불" : "예약연기";

			if(data.code==200){
				alert_Msg(outputMsg+"처리가 완료되었습니다.", 1, '/my/reserveList');
			}else{
				alert_Msg(outputMsg+"처리도중 문제가 발생했습니다.<br>고객행복센터에 문의해주세요.");
			}
		},
		error: function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}

var iscroll_all;
function iscroll_run_all () {
	iscroll_all = new IScroll('.pop_all .iscroll_reserve',{
		mouseWheel:true,
		interactiveScrollbars:true,
		shrinkScrollbars:'scale',
		fadeScrollbars:true,
		click:true
	});
}

var iscroll_delay;
function iscroll_run_delay () {
	iscroll_all = new IScroll('.pop_delay .iscroll_reserve',{
		mouseWheel:true,
		interactiveScrollbars:true,
		shrinkScrollbars:'scale',
		fadeScrollbars:true,
		click:true
	});
}

function pop_all(){ // 전액환불요청 팝업
	prevent_scroll();
	$('.pop_all').fadeIn(150);
	$('.bg_dimm').fadeIn(150);
	iscroll_run_all(); // iscroll
	$('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
}

function pop_delay(){ // 예약연기요청 팝업
	prevent_scroll();
	$('.pop_delay').fadeIn(150);
	$('.bg_dimm').fadeIn(150);
	iscroll_run_delay(); // iscroll
	$('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
}

/* 구매총액 팝업 */
var iscroll_price;

function iscroll_run_price () {
	iscroll_price = new IScroll('.iscroll_price',{
		mouseWheel:true,
		interactiveScrollbars:true,
		shrinkScrollbars:'scale',
		fadeScrollbars:true,
		click:true
	});
}

function pop_price(){
	var cnt = $('.pop_price ul li').length;

	if (cnt < 3){ // 2개 이하일때
		$('.pop_price .content').addClass('height_align');
	}else{
		null;
	}
	prevent_scroll();
	$('.pop_price').fadeIn(150);
	$('.bg_dimm').fadeIn(150);
	iscroll_run_price(); // iscroll
	$('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
	align_verticalAll('pop_price');
}

/* 팝업 - 쿠폰등록 */
function coupon_reg(){
	$('.coupon_reg').fadeIn(150);
	$('.bg_dimm').fadeIn(150);
	prevent_scroll();
	align_vertical();
}

/* 당첨자 확인 iscroll */
var iscroll_chk_use;

function iscroll_run_win () {
	iscroll_chk_use = new IScroll('.iscroll_chk_use',{
		mouseWheel:true,
		interactiveScrollbars:true,
		shrinkScrollbars:'scale',
		fadeScrollbars:true,
		click:true
	});
}

function pop_chk_use(){ // 열기
	$('.pop_chk_use').fadeIn(150);
	$('.bg_dimm').fadeIn(150);
	iscroll_run_win();
	iscroll_chk_use.refresh();
}

// 최근본숙소 전체삭제
$.del_recentRoom = function(){
	$.ajax({
		type: 'POST',
		async: false,
		cache: false,
		url: '/my/delRecentRooms_non',
		dataType: 'json',
		data: {},
		success: function(data) {
			window.location.reload();
		},
		error: function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}