$(function() {


  $("#home a:contains('Home')").parent().addClass('active');


  $('ul.nav li.dropdown').hover(function() {
    $('.dropdown-menu', this).fadeIn()
  }, function() {
    $('.dropdown-menu', this).fadeOut('fast');
  }); //hover over navigation

  $('ul.mainnav li.dropdown').hover(function() {
    $('.dropdown-menu', this).fadeIn()
  }, function() {
    $('.dropdown-menu', this).fadeOut('fast');
  }); //hover over navigation


}); //jQuery is loaded