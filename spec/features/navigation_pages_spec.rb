require "rails_helper"

describe "Player can move to the north." do
  it "player can move to in the north direction" do
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s", :color => "grey")
    north_room= FactoryGirl.create(:room, :name => "Center,North", :door_ways =>"w,e,s", :color => "grey")
    visit room_path(center_room)
    click_on "Go North"
    expect(page).to have_content "Center,North"
  end

end
