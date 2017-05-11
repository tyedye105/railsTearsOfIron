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
      if @character.update(character_params)
          respond_to do |format|
            format.html { redirect_to room_path(@character.room_id)}
            format.js
        end
      end
    end


  def destroy
    @character = current_player.characters.last
      @character.destroy
      redirect_to new_character_path
  end
  private

  def character_params
    params.require(:character).permit(:tile_id,:room_id)
  end
  def tile_params
    params.require(:character).permit(:tile_id)
  end


end
