class RoomsController < ApplicationController
  def index
    @start = Room.find(5)
    @item_start = Room.find(13)
  end
  def show
    @room = Room.find(params[:id ])
    @items = @room.items.all
  end
end
