require 'rails_helper'

describe Item do

  describe "reset " do
    it "When called on an item it will reset it as if it was never found and picked up" do
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :first_time => false)
    test_item = FactoryGirl.create(:item, :obtainable => false, :active =>true, :room_id => top_left_room.id)
    test_item.item_reset
    expect(test_item.active).to eq false
    end
    it "When called on an item it will reset it as if it was never found and picked up" do
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :first_time => false)
    test_item = FactoryGirl.create(:item, :obtainable => false, :active =>true, :room_id => top_left_room.id)
    test_item.item_reset
    expect(test_item.obtainable).to eq true
    end
  end


  describe "#spawn_item method" do
    it "will spawn the item 100% of the time if it is a key_item" do
        top_left_room= FactoryGirl.create(:room)
        test_item = FactoryGirl.create(:item, :room_id => top_left_room.id)
        test_item.spawn_item
        expect(test_item.active).to eq(true)
    end
    it "wont spawn the item if it is not obtainable" do
      top_left_room= FactoryGirl.create(:room)
      test_item = FactoryGirl.create(:item, :room_id => top_left_room.id, :obtainable => false)
      expect(test_item.spawn_item).to eq("all items have been spawned")
    end
  end
end
