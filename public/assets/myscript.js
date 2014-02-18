$(function()
{

  $("#home a:contains('Home')").parent().addClass("active"),

  $("#organization-new a:contains('Service Providers')").parent().addClass("active"),

  $("#student a:contains('Student')").parent().addClass("active"),

  $("#student-all a:contains('Student')").parent().addClass("active"),
  $("#service-provider a:contains('Service')").parent().addClass("active"),
  $("#service-provider-all a:contains('Service Provider')").parent().addClass("active"),
  $("#referral-all a:contains('Referral')").parent().addClass("active"),
  $("#referral-new a:contains('Referral')").parent().addClass("active"),
  $("#incident-log-all a:contains('Incident Log')").parent().addClass("active"),
$("#incident-log-new a:contains('Incident Log')").parent().addClass("active"),
  $("ul.nav li.dropdown").hover(function(){
    $(".dropdown-menu",this).fadeIn()},
    function(){$(".dropdown-menu",this).fadeOut("fast")}),

  $("ul.mainnav li.dropdown").hover(function(){$(".dropdown-menu",this).fadeIn()},function(){$(".dropdown-menu",this).fadeOut("fast")}),$(".pagination a").on("click",function(){return $(".pagination").html("Looking for Service Providers ..."),$.get(this.href,null,null,"script"),!1})
}
  );