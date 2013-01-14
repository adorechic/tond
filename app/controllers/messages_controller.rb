# encoding: utf-8
class MessagesController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    @message = Message.new
    @message.room_id = @room.id
    @channel_id = "room_#{@room.id}_messages"
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.create(params[:message])
    @channel_id = "room_#{@room.id}_messages"

    if @message
      status = 'success'

      Pusher[@channel_id].trigger(
        'create', {
        body: @message.body
      })
    else
      status = 'failure'
    end

    render json: { status: status, data: @message }
  end
end
