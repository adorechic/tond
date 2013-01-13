$ ->
  $('#post_message')
    .on 'ajax:complete', '.new_message', (event, ajax, status) ->
      response = $.parseJSON(ajax.responseText)
      body = response.data.body

      $('#messages').append('<li>' + body + '</li')
      $('#message_body').attr('value', '')
