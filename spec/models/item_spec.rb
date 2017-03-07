require 'rails_helper'

describe Item do



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
