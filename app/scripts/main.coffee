console.log "'Allo from CoffeeScript!"

$.ajax
  url: 'https://erikberg.com/events.json'
  beforeSend: (request) ->
    request.setRequestHeader 'Authorization', 'Bearer 88b7a5d7-e198-4d95-aee6-bceb20273178'
  success: (data) ->
    $('#js-main').html data
    console.log "Success! #{data}"
