require 'rails_helper'

describe Room do

describe "#been_there? method" do
  it "will check if the room has been entered the first time, and then change the first_time attribute to false." do
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s")
    top_left_room.been_there?
    expect(top_left_room.first_time).to eq false
  end
end

describe ".reset " do
  it "When called it will find all rooms that have first_time set to false, and set the to true" do
  top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :first_time => false)
  top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :first_time => false)
  Room.reset
  expect(top_left_room.first_time && top_center_room.first_time).to eq false
  end
end
