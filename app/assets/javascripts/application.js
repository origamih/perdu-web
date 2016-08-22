// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-sprockets
//= require bxslider
//= require skrollr
//= require moment
//= require bootstrap-datetimepicker


$(function(){
  // initialize skrollr if the window width is large enough
  if ($(window).width() > 767) {
    skrollr.init({
    smoothScrolling: false,
    mobileDeceleration: 0.004,
    forceHeight: false
  });
  }

  // disable skrollr if the window is resized below 768px wide
  $(window).on('resize', function () {
    if ($(window).width() <= 767) {
      // skrollr.init().destroy(); // skrollr.init() returns the singleton created above
    }
  });
});
