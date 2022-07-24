// 팝업 - 멤버쉽 혜택
var iscroll_mem;
function iscroll_run_mem () {
    iscroll_mem = new IScroll('.pop_mem .iscroll_cp',{
        mouseWheel:true,
        interactiveScrollbars:true,
        shrinkScrollbars:'scale',
        fadeScrollbars:true,
        click:true
    });
}
function pop_mem(){
    prevent_scroll();
    $('.pop_mem').fadeIn(150);
    $('.bg_dimm').fadeIn(150);
    iscroll_run_mem(); // iscroll
    $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
}

// 팝업 - 이벤트
var iscroll_evt;
function iscroll_run_evt () {
    iscroll_evt = new IScroll('.pop_evt .iscroll_cp',{
        mouseWheel:true,
        interactiveScrollbars:true,
        shrinkScrollbars:'scale',
        fadeScrollbars:true,
        click:true
    });
}
function pop_evt(){
    prevent_scroll();
    $('.pop_evt').fadeIn(150);
    $('.bg_dimm').fadeIn(150);
    iscroll_run_evt(); // iscroll
    $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
}

function pop_useinfo(){
    prevent_scroll();
    $('.pop_useinfo').fadeIn(150);
    $('.bg_dimm').fadeIn(150);
    iscroll_run_useinfo(); // iscroll
    iscroll_useinfo.refresh(); // iscroll refresh
    $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
}

function pop_room_detail(data_no){
    prevent_scroll();
    $('.pop_useinfo[data-room-detail='+data_no+']').fadeIn(150);
    $('.bg_dimm').fadeIn(150);
    var iscroll = "iscroll_"+data_no;
    iscroll = new IScroll('.scroll_'+data_no,{
        mouseWheel:true,
        interactiveScrollbars:true,
        shrinkScrollbars:'scale',
        fadeScrollbars:true,
        click:true,
    });
    $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
}

/* 객실상세 갤러리 높이 수정*/
function gallery_height_align(){
	setTimeout(function(){
		$('.swiper-wrapper').each(function(){
			var this_height = $('li:eq(0) img',this).height();
			$('li img',this).parent().parent().css('height',this_height);
		});
	},300);
}


/* jQuery */

var map_load = false;

function init_map(lat, lng) {

    setTimeout(function(){

        if (!map_load) {
            var image_red = new daum.maps.MarkerImage(	// 마커 빨강
				'//image.goodchoice.kr/images/web_v3/ico_map_3.png',
				new daum.maps.Size(38, 47),
				{}
			);

            var map = new daum.maps.Map($('#google_maps')[0], {
                center: new daum.maps.LatLng(parseFloat(lat), parseFloat(lng)),
				level: 3,
				tileAnimation: false
            });

            var marker = new daum.maps.Marker({
                position: new daum.maps.LatLng(parseFloat(lat), parseFloat(lng)),
				image: image_red // 마커 커스텀 삽입
            });

			marker.setMap(map);

            daum.maps.event.addListener(map, 'idle', function() {
            	map_load = true;
            });
        }

    },100);    
}

// 별점 계산
function get_score_star(rateavg) {
    rateavg = Math.floor((parseFloat(rateavg) * 10) / 2);
    rateavg -= rateavg % 5;

    return str_pad(rateavg, 2, '0', 'STR_PAD_LEFT');
}

/**
 * 경과 시간 (string)
 */
function get_date_diff(regdate, ago) {
	var ptime = xReturnNumber(regdate),
		ctime = Math.floor(new Date().getTime() / 1000);

	// Elapsed time
	var etime = ctime - ptime;

	if (etime < 60) { return '방금 ' + ago; }

	var arrsec = {
		year  : 365 * 24 * 60 * 60,
		month : 30 * 24 * 60 * 60,
		day   : 24 * 60 * 60,
		hour  : 60 * 60,
		minute: 60
	};

	var arrsec_str = {
		year  : '년',
		month : '개월',
		day   : '일',
		hour  : '시간',
		minute: '분'
	};

	for (var key in arrsec) {
		var val = etime / arrsec[key];
		if (val >= 1) {
			var res = Math.floor(val);
			return res + arrsec_str[key] + ' ' + ago;
		}
	}

	return ago;
}

function float_zero(rateavg) {
    var str_length = (parseFloat(rateavg) * 10) >= 100 ? 4:3;

    return str_pad(rateavg, str_length, '.0');
}

let room_detail_async = (function () {
	let container;
	function init() {
		container = new Vue({
			el: '#pop_room_description',
			data: function () {
				return {
					items: [],
				}
			},
			methods: {
				show: function (room_id) {
					let _self = this;
					let _container = $("#pop_room_description");

					prevent_scroll();
					_container.fadeIn(150);
					$(".bg_dimm").fadeIn(150);

					$.xResponse('/product/room_detail_non/' + $('#ano').val(), {
						armgno: room_id,
						adcno: $("#adcno").val(),
						sel_date: $("#sel_date").val(),
						sel_date2: $("#sel_date2").val(),
					}).done(function (data) {
						_self.items = data.result;

						$(".fix_title").bind('touchmove',function(i){i.preventDefault()});
						$('.spinner').fadeOut(250);
					});
				}
			}, // methods
			updated: function () {
				let iscroll = new IScroll('#pop_room_description .iscroll_cp',{
					mouseWheel:true,
					interactiveScrollbars:true,
					shrinkScrollbars:'scale',
					fadeScrollbars:true,
					click:true,
				});
			}
		});
	}
	return {
		show: function (room_id) {
			$('.spinner').show(250);
			container.show(room_id)
		},
		init: init
	}
})();

