class RoomsController < ApplicationController
  def index
    @player = current_player
    @character = @player.characters.first
    @start = Room.find_by(:name =>"Room 5")
    @item_start = Room.find_by(:name=>"Item Test 13")
    @character_test = Room.find_by(:name=>"Character Test 18")
  end
  def show
    @player = current_player
    @character = @player.characters.first
    @room = Room.find(params[:id ])
    @items = @room.items.all
  end
end
