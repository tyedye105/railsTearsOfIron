require 'rails_helper'

describe "#do_you_have?(item) method" do
  it "will look through the characters inventory, and return if the user has the item." do
    test_player = FactoryGirl.create(:player)
    test_character = FactoryGirl.create(:character, :player_id => test_player.id)
    test_room = FactoryGirl.create(:room)
    test_item = FactoryGirl.create(:item, :obtainable => true, :active => true, :room_id => test_room.id, :character_id => test_character.id)
    expect(test_character.do_you_have?("Sword")).to eq true

  end
end
