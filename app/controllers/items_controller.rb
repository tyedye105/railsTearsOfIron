class ItemsController < ApplicationController
  before_action :authenticate_player!
  def edit
    @character = current_player.characters.first
    @item = Item.find(params[:id])
  end
  def update
    @character = current_player.characters.first
    @item = Item.find(params[:id])
      if @item.update(item_params)
        redirect_to room_path(@item.room_id)
      end
  end
  private
  def item_params
    params.require(:item).permit(:character_id)
end
end
