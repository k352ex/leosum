# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.img_thumbnail').mouseenter ->
    $('.img_thumbnail').fadeTo 'fast', 0.5
    return
  $('.img_thumbnail').mouseleave ->
    $('.img_thumbnail').fadeTo 'fast', 1
    return
  return
