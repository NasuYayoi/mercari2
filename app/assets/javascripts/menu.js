$(function() {
  $(".pc-header-nav ul").hide();
  $(".pc-header-nav li").hover( function() {
    $(">ul", this).show();
    $(">a", this).show();
  },
  function() {
    $(">ul", this).hide();
    $(">a", this).hide();
    }
  );
  $('.pc-header-nav').click(function() {
      $(this).parent().hide().addClass('fixed');
  });
});
