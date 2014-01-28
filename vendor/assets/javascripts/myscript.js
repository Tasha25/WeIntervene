$(function() {


  $("#home a:contains('Home')").parent().addClass('active');
 $("#organization-new a:contains('Service Providers')").parent().addClass('active');
 $("#student a:contains('Student')").parent().addClass('active');
 $("#student-all a:contains('Student')").parent().addClass('active');
 $("#service-provider a:contains('Service')").parent().addClass('active');
  $("#service-provider-all a:contains('Service Provider')").parent().addClass('active');


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