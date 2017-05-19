class TilesController < ApplicationController
  def show
    @character = current_player.character.last
    @tile = Tile.find(params[:id])
    @items = @tile.items.all
  end
end
