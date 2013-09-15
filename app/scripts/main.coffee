'use strict'

$.ajax
  url: 'http://0.0.0.0:3000/'

  success: (data) ->
    go = true

    JSON.parse(data.body).data.games.game.forEach (game) ->
      if game.venue.match /dodger/i then go = false

    decision = if go then 'Fuck yeah,' else 'Fuck that, do not'
    $('#js-main').html "#{decision} fucking go to the Gold Room"
