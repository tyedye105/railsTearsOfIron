class RoomsController < ApplicationController
  def index
    @start = Room.find(5)
  end
  def show
    @room = Room.find(params[:id ])
  end
end
