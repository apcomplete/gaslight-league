// This is a manifest file that'll be compiled into application.js, which will include all the files
//= require jquery
//= require bootstrap-sprockets

// window.onload = init;
// function init() {
//   document.getElementById('small-ranking').onclick = closeLargeRanking;
//   document.getElementById('large-ranking').onclick = openLargeRanking;
// }
//
// function openLargeRanking() {
//   document.getElementById('rank-toggle').setAttribute('class','open');
// }
//
// function closeLargeRanking() {
//   document.getElementById('rank-toggle').setAttribute('class','');
// }

$(document).ready(function(){
  $('.contest-rankings').each(function () {
    $(this).find('.scoremarker:gt(2)').addClass('hide');
  });

  $('#small-ranking').parent().click(function(){
    $('.contest-rankings').each(function () {
      $(this).find('.scoremarker:gt(2)').addClass('hide');
    });
  });

  $('#large-ranking').parent().click(function(){
    $('.contest-rankings .scoremarker').removeClass('hide');
  });
});
