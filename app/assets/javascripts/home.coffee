# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $ ->
#   $(".bxslider").bxSlider
#     mode: 'fade', 
#     pager: false,
#     auto: true

$ ->
  $('.carousel').carousel()

  do setHeight = ->
    wHeight = $(window).height()
    console.log(wHeight)
    navHeight = $('#navbar').height()
    vHeight = wHeight - navHeight
    console.log(vHeight)
    $('.carousel-inner').height vHeight

  $('#arrival_datetime').datetimepicker
    sideBySide: true,
    minDate: moment().hour(19).minutes(0),
    disabledTimeIntervals: [
          [moment().hour(0).minutes(0), moment().hour(18).minutes(59)]
       ]
  # $(window).resize ->
  #   setHeight()