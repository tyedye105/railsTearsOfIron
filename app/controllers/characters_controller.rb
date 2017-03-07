class CharactersController < ApplicationController
  def index
  end
  def show
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
        rende :new
      end
  end
  def edit
  end
  def update
  end
  def destroy
  end
  private

  def character_params
    params.require(:character).permit(:name)
  end
end
