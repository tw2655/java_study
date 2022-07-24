/**
 * 
 */let nPayPromotionStatus = function (checkIn, checkOut, placeId) {
  let _data = {
    mark: '', amount: 0, isLoaded: false
  }

  $.xResponse('/product/promotion_status/' + placeId, {
    'checkIn' : checkIn,
    'checkOut' : checkOut
  }, {
    type: 'get',
    async: true,
  })
  .done(function (response) {
    if (response.data && !!response.data.discountValue ) {
      // todo 내용변경 ... 뭐가 들어갈지 모름
      _data.mark = response.data.discountType !== 'PERCENT' ? '' : '%'
      _data.amount = response.data.discountValue;
      _data.isLoaded = true;
    }
  });

  let container = new Vue({
    el: '#promotion-banner',
    data: _data
  });
};