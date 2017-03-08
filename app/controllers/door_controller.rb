class DoorController < ApplicationController
  def show
    @character = current_player.characters.first
    @door = Door.find(params[:id])
  end
  def edit
    @character = current_player.characters.first
    @door = Door.find(params[:id])
  end
  def update
    @character = current_player.characters.first
    @door = Door.find(params[:id])
      if @door.update(door_params)
    redirect_to room_path(@door.room_id)
    end
  end

  private
    def door_params
      params.require(:door).permit(:is_locked, :active)
    end
end
