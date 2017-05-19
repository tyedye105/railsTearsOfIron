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
    @double_door = Door.find(@door.id+1)
    @consumable = @character.items.find_by(:name => @door.req_item)
      if @door.update(door_params)
        if @double_door != nil
        @double_door.update(door_params)
        end
        respond_to do |format|
          format.html { redirect_to room_path(@character.room_id)}
          format.js
        end
      end
  end

  private
    def door_params
      params.require(:door).permit(:is_locked, :active, :group_no)
    end
end
