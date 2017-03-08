class DoorController < ApplicationController
  def show
    @character = current_player.characters.first
    @door = Door.find(params[:id])
  end
  def edit
  end
  def update
  end
end
