class ItemsController < ApplicationController
  before_action :authenticate_player!
  def show
    @character = current_player.characters.last
    @item_to_pick_up = @character.items.new()
    @item = Item.find(params[:id])
  end
  def new
    @character = current_player.characters.last
    @item_to_pick_up = @character.items.new()
  end
  def create

    @character = current_player.characters.last
    @item = @character.items.new(item_params)
      if @character.save
        room = Room.find(@item.room_id)
        room.locate(@item.origin_id).pick_it_up
        flash[:notice] = "You have picked up #{@item.name}"
        redirect_to room_path(@item.room_id)
        @item.update({:room_id => nil})
      end
  end
  def edit
    @character = current_player.characters.last
    @item_to_pick_up = @character.items.new()
    @item = Item.find(params[:id])
  end
  def update
    @character = current_player.characters.last
    @item = Item.find(params[:id])
      if @item.update(item_params)
          @item.pick_it_up
        redirect_to room_path(@item.room_id)
      end
  end
  private
  def item_params
    params.require(:item).permit(:name, :description, :obtainable, :active, :room_id, :key_item, :rarity, :character_id, :origin_id, :img)
end
end
