'use strict'

$.ajax
  url: 'http://0.0.0.0:3000/'

  success: (res) ->
    decision = if res.go then 'Fuck yeah,' else 'Fuck that, do not'
    $('#js-main').html "#{decision} fucking go to the Gold Room"
