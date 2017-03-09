class DoorController < ApplicationController
  def show
    @character = current_player.characters.last
    @door = Door.find(params[:id])
  end
  def edit
    @character = current_player.characters.last
    @door = Door.find(params[:id])
  end
  def update
    @character = current_player.characters.last
    @door = Door.find(params[:id])
    @consumable = @character.items.find_by(:title => @door.req_item)
      if @door.update(door_params)
          @consumable.consume_item
    redirect_to room_path(@door.room_id)
    end
  end

  private
    def door_params
      params.require(:door).permit(:is_locked, :active, :req_)
    end
end
