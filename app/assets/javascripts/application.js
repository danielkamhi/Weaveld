// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require bootstrap-sprockets
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks

//= require_tree .
$(document).ready(function(){

    

        $('#asia').click(function () {
          $('html,body').animate({
              scrollTop: $(document).height()/3.0,
          }, 1500);
        });
        $('#australia').click(function () {
          $('html,body').animate({
              scrollTop: $(document).height()/2.1,
          }, 1000);
        });
        $('#europe').click(function () {
          $('html,body').animate({
              scrollTop: $(document).height()/1.8,
          }, 1000);
        });
        $('#americas').click(function () {
          $('html,body').animate({
              scrollTop: $(document).height()/1.4,
          }, 1000);
        });




    $(window).bind('scroll', function() {
         if ($(window).scrollTop() > 280) {
             $('.headBackground').addClass('fixed');

         }
         else {
             $('.headBackground').removeClass('fixed');
         }
    });
    $(window).bind('scroll', function() {
         if ($(window).scrollTop() > 70) {
             $('.cityName').addClass('smallText');
         }
         else {
             $('.cityName').removeClass('smallText');
         }
    });
    


   $(document).scroll(function() {
          var y = $(this).scrollTop();
             if (y > 1) {
                $('#explain2').fadeIn(2500);
         }
            else {
               $('#explain2').fadeOut;
         }
    });
      $(document).scroll(function() {
          var y = $(this).scrollTop();
             if (y > 1) {
                $('#right').fadeIn(3000);
         }
            else {
               $('#right').fadeOut;
         }
    });
           $(document).scroll(function() {
          var y = $(this).scrollTop();
             if (y > 1) {
                $('#right2').fadeIn(3500);
          }
            else {
               $('#right2').fadeOut;
         }
    });       
     $(document).scroll(function() {
          var y = $(this).scrollTop();
             if (y > 1) {
                $('#right3').fadeIn(4000);
         }
            else {
               $('#right3').fadeOut;
         }
    });
       $('#right3').click(function () {
          $('html,body').animate({
            scrollTop: $(document).height()/1000,
         }, 1000);
         });

});