class CharactersController < ApplicationController
  before_action :authenticate_player!, :except => [:index]
  def index
  end
  def new
    @player = current_player
    @character = @player.characters.new
  end
  def create
    @player = current_player
    @character = @player.characters.new(character_params)
      if @player.save
        redirect_to rooms_path
      else
        render :new
      end
  end
  def edit
    @player = current_player
    @character = @player.characters.last
  end
  def update
    @player = current_player
    @character = @player.characters.last
    @current_room = Room.find(@character.room_id)
    @tiles = @current_room.tiles
      if @character.update(move_params)
        respond_to do |format|
          format.html {redirect_to room_path(@current_room) }
          format.js
        end
      elsif @character.update(move_room_params)
        redirect_to rooms_path
      end
  end
  def destroy
    @character = current_player.characters.last
      @character.destroy
      redirect_to new_character_path
  end
  private

  def move_room_params
    params.require(:character).permit(:room_id)
  end

  def move_params
    params.require(:character).permit(:tile_id)
  end
end
