# encoding: utf-8
class MessagesController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    @message = Message.new
    @message.room_id = @room.id
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.create(params[:message])

    status = @message ? 'success' : 'failure'

    render json: { status: status, data: @message }
  end
end
