<<<<<<< Updated upstream
$ ->
  $('#myCarousel').carousel interval: false
  $('#myCarousel').on 'slid.bs.carousel', (e) ->
    if $('.carousel-inner .item:last').hasClass('active')
      $('#myCarousel').carousel 'pause'
    if $('.carousel-inner .item:first').hasClass('active')
      $('#myCarousel').carousel 'cycle'
    return
=======
$('#myCarousel').carousel interval: false
$('#myCarousel').on 'slid.bs.carousel', (e) ->
  if $('.carousel-inner .item:last').hasClass('active')
    $('#myCarousel').carousel 'pause'
  if $('.carousel-inner .item:first').hasClass('active')
    $('#myCarousel').carousel 'cycle'
>>>>>>> Stashed changes
  return
return
