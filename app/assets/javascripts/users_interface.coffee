# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.list-group-item').on 'click', ->
    $(this).find("ul").toggleClass("hidden")
    $(this).find("a").toggleClass("active")