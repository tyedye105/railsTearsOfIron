class DoorController < ApplicationController
  def show
    @character = current_player.character.first
    @door = Door.find(params[:id])
  end
  def edit
  end
  def update
  end
end
