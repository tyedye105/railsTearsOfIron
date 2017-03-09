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
  end
  def update
  end
  def destroy
    @character = current_player.characters.last
      @character.destroy
      redirect_to new_character_path
  end
  private

  def character_params
    params.require(:character).permit(:name)
  end
end
