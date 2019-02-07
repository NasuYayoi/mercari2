$(function(){
  $('.btn-mail').on("click", function() {
    $('section').css('display','none');
    $('.registration').css('display','block');
  });

  $('.btn-registration').on("click", function() {
    $('section').css('display','none');
    $('.sms-confirmation').css('display','block');
  });

  $('.btn-sms').on("click", function() {
    $('section').css('display','none');
    $('.address-registration').css('display','block');
  });

  $('.btn-address').on("click", function() {
    $('section').css('display','none');
    $('.method-payment').css('display','block');
  });

  $('.btn-add-card').on("click", function() {
    $('section').css('display','none');
    $('.card-registration').css('display','block');
  });

  $('.btn-add-card-info').on("click", function() {
    $('section').css('display','none');
    $('.finish').css('display','block');
  });

});
