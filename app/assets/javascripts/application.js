// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
  $(document).ready(function() {
    var carousel = $("#carousel").featureCarousel({
      // include options like this:
      // (use quotes only for string values, and no trailing comma after last option)
      // option: value,
      // option: value
    });

    $("#but_prev").click(function () {
      carousel.prev();
    });
    $("#but_pause").click(function () {
      carousel.pause();
    });
    $("#but_start").click(function () {
      carousel.start();
    });
    $("#but_next").click(function () {
      carousel.next();
    });
	$(".tracker-summation-container").hide();
  });