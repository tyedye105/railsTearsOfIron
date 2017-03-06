require 'rails_helper'

describe Item do

  describe "#spawn_item method"
    it "will spawn_item 100% of the time if it is a key_item" do
        top_left_room= FactoryGirl.create(:room)
        test_item = FactoryGirl.create(:item, :room_id => top_left_room.id)
        test_item.spawn_item
        expect(test_item.active).to eq(true)

    end
end
