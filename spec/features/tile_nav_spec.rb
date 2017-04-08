require "rails_helper"




describe "hoopla" do
    @player = FactoryGirl.create(:player)
    @character = FactoryGirl.create(:character, :player_id => @player.id)
    @room= FactoryGirl.create(:room, :name => "Top Left")
    until @room.tiles.length === 9 do
      FactoryGirl.create(:tile, :room_id =>@room.id)
    end

  it "hoopla" do
binding.pry
p "hello world"
expect(Tile.all).to eq 9
    end
  end
