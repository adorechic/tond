# encoding: utf-8
class RoomsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params[:room])
    @room.save!

    redirect_to @room
  end

  def show
    @room = Room.find(params[:id])
  end
end
