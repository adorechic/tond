$ ->
  $('#post_message')
    .on 'ajax:complete', '.new_message', (event, ajax, status, data) ->
      alert status
