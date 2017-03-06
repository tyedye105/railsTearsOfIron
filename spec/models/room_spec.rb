require 'rails_helper'

describe Room do

describe "#been_there? method" do
  it "will check if the room has been entered the first time, and then change the first_time attribute to false." do
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s")
    top_left_room.been_there?
    expect(top_left_room.first_time).to eq false
  end
end

end
