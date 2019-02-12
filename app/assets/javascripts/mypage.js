$(function(){
  $('.user-notice__tab li').click(function(){
    var index = $('.user-notice__tab li').index(this);
    $('.users-news').css('display','none');
    $('.users-todo').css('display','none');
    $('.user-notice__tab li').removeClass('select__notice');
    $(this).addClass('select__notice');
    $('.user-notice__body ul').eq(index).css('display','block');
  });
  $('.user-page-items-main__tab li').click(function(){
    var index_num = $('.user-page-items-main__tab li').index(this);
    $('.user-page-items-main__body__transaction').css('display','none');
    $('.user-page-items-main__body__past-transaction').css('display','none');
    $('.user-page-items-main__tab li').removeClass('select__time');
    $(this).addClass('select__time');
    $('.user-page-items-main__body ul').eq(index_num).css('display','block');
  });
});
