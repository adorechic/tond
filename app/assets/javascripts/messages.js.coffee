$ ->
  $('#post_message')
    .on 'ajax:complete', '.new_message', (event, ajax, status) ->
      response = $.parseJSON(ajax.responseText)
      body = response.data.body

      $('#message_body').attr('value', '')

  channelId = $('#channel_id').data('channelId')
  pusherKey = $('#pusher_key').data('pusherKey')
  pusher = new Pusher(pusherKey)
  channel = pusher.subscribe(channelId)
  channel.bind 'create', (data) ->
    $('#messages').append('<li>' + data.body + '</li>')
