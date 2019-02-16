$(function(){
  $('.categories__input').change(function(){
    var category_id = $(this).val();
  if(category_id == 'categories1' ){
    $('#leadies').css('display','none');
    $('#mens').css('display','none');
    $('#baby').css('display','none');
    $('#leadies').css('display','block');
    $('#include_id-content').css('display','none');
    $('#smallcategories').css('display','none');
  }else if(category_id == 'categories2'){
    $('#leadies').css('display','none');
    $('#mens').css('display','none');
    $('#baby').css('display','none');
    $('#mens').css('display','block');
    $('#include_id-content').css('display','none');
    $('#smallcategories').css('display','none');
  }else if(category_id == 'categories3'){
    $('#leadies').css('display','none');
    $('#mens').css('display','none');
    $('#baby').css('display','none');
    $('#baby').css('display','block');
    $('#include_id-content').css('display','none');
    $('#smallcategories').css('display','none');
  }
  });
  $('.midcategories').change(function(){
    var midcategories_id = $(this).val();
    $('#smallcategories').css('display','none');
    $.ajax({
        url: 'sell',
        type: 'GET',
        dataType: 'html',
        async: true,
        data: {
            midcategories_id: midcategories_id
        }
    });
    $('#smallcategories').css('display','block');
  });

  $('#include_id').change(function(){
    $('#include_id-content').css('display','block');
  });

  $('.sell-body-price-main-input__box__yen').keyup(function(){
    var price = $('.sell-body-price-main-input__box__yen').val();
    var commission = price * 0.1
        commission = Math.floor(commission);
        commission = String(commission).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
    var profit = price - commission
        profit = Math.floor(profit);
        profit_string = String(profit).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
    if (price >= 300 && 9999999 >= price){
      $('.sell-body-price-main-commission__box__ans').html("￥" + commission);
      $('.sell-body-price-main-profit__box__ans').html("￥" + profit_string);
    }
    else{
      $('.sell-body-price-main-commission__box__ans').text("ー");
      $('.sell-body-price-main-profit__box__ans').text("ー");
    }
  });
});
