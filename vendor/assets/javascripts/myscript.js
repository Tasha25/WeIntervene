$(function() {


  $("#home a:contains('Home')").parent().addClass('active');
 $("#organization-new a:contains('Service Providers')").parent().addClass('active');
 $("#student a:contains('Student')").parent().addClass('active');
 $("#student-all a:contains('Student')").parent().addClass('active');
 $("#service-provider a:contains('Service')").parent().addClass('active');
  $("#service-provider-all a:contains('Service Provider')").parent().addClass('active');
   $("#referral-all a:contains('Referral')").parent().addClass('active');
    $("#referral-new a:contains('Referral')").parent().addClass('active');


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

  $(".pagination a").live("click", function() {
    $(".pagination").html("Looking for Service Providers ...");
    $.get(this.href, null, null, "script");
    return false;
  }); //will allow the page to stay still and the data to come through

}); //jQuery is loaded