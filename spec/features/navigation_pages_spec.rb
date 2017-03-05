require "rails_helper"

describe "Player can move to the north." do
  it "player can move to in the north direction" do

    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :color => "grey")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :color => "grey")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s", :color => "grey")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s", :color => "grey")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s", :color => "grey")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s", :color => "grey")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n", :color => "grey")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n", :color => "grey")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n", :color => "grey")
    visit room_path(center_room)
    click_on "Go North"
    expect(page).to have_content "Top Center"
  end
end

describe "Player can move to the south." do
  it "player can move to in the southern direction" do

    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :color => "grey")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :color => "grey")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s", :color => "grey")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s", :color => "grey")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s", :color => "grey")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s", :color => "grey")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n", :color => "grey")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n", :color => "grey")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n", :color => "grey")
    visit room_path(center_room)
    click_on "Go South"
    expect(page).to have_content "Bottom Center"
  end
end
describe "Player can move to the west." do
  it "player can move to in the western direction" do

    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :color => "grey")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :color => "grey")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s", :color => "grey")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s", :color => "grey")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s", :color => "grey")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s", :color => "grey")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n", :color => "grey")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n", :color => "grey")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n", :color => "grey")
    visit room_path(center_room)
    click_on "Go West"
    expect(page).to have_content "Center Left"
  end
end
describe "Player can move to the east." do
  it "player can move to in the eastern direction" do

    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :color => "grey")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :color => "grey")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s", :color => "grey")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s", :color => "grey")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s", :color => "grey")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s", :color => "grey")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n", :color => "grey")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n", :color => "grey")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n", :color => "grey")
    visit room_path(center_room)
    click_on "Go East"
    expect(page).to have_content "Center Right"
  end
end
