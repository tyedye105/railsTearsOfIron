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
    @room = Room.find(@character.room_id)
    @tiles = @room.tiles.all
  end

  def new
    @room = Room.new
  end
  def create
    @room = Room.new(room_params)
      if @room.save
        redirect_to rooms_path
      end
  end
  def edit
    @room = Room.find(params[:id])
  end
  def update
    @room = Room.find(params[:id])
      if @room.update(room_params)
        redirect_to rooms_path
  end
end
def destroy
  @room = Room.find(params[:id])
    if @room.destroy
      redirect_to rooms_path
    end
  end

private

  def room_params
    params.require(:room).permit(:name, :door_ways, :first_description, :normal_description)
  end

end
