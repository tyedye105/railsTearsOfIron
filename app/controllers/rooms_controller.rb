class RoomsController < ApplicationController
  before_action :authenticate_player!
  def index
    @player = current_player
    @character = @player.characters.last
    @start = Room.find_by(:name =>"Room 5")
    @item_start = Room.find_by(:name=>"Item Test 13")
    @character_test = Room.find_by(:name=>"Character Test 18")
    @rooms = Room.all
    @doors = Door.all
  end
  def show
    @player = current_player
    @character = @player.characters.last
    @room = Room.find(params[:id ])
    @items = @room.items.all
    @east = nil
    @enemy_robo_alive = true
    if@room.doors.any?
      @room.doors.each do |door|
        if @room.directions_blocked.include?("e")
          @east = door
        end
      end
    end

  end
end
