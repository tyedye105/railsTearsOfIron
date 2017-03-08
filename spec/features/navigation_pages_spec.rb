require "rails_helper"

describe "Player can move to the north." do
  it "player can move to in the north direction" do
    player = FactoryGirl.create(:player)
    character = FactoryGirl.create(:character, :player_id => player.id)
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n")
    login_as(player, :scope => :player)
    visit room_path(center_room)
    click_on "Go North"
    expect(page).to have_content "Top Center"
  end
end

describe "Player can move to the south." do
  it "player can move to in the southern direction" do
    player = FactoryGirl.create(:player)
    character = FactoryGirl.create(:character, :player_id => player.id)
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n")
    login_as(player, :scope => :player)
    visit room_path(center_room)
    click_on "Go South"
    expect(page).to have_content "Bottom Center"
  end
end
describe "Player can move to the west." do
  it "player can move to in the western direction" do
    player = FactoryGirl.create(:player)
    character = FactoryGirl.create(:character, :player_id => player.id)
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n")
    login_as(player, :scope => :player)
    visit room_path(center_room)
    click_on "Go West"
    expect(page).to have_content "Center Left"
  end
end
describe "Player can move to the east." do
  it "player can move to in the eastern direction" do
    player = FactoryGirl.create(:player)
    character = FactoryGirl.create(:character, :player_id => player.id)
    top_left_room= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s")
    top_center_room= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s")
    top_right_room= FactoryGirl.create(:room, :name => "Top Right", :door_ways =>"w,s")
    center_left_room= FactoryGirl.create(:room, :name => "Center Left", :door_ways =>"e,n,s")
    center_room= FactoryGirl.create(:room, :name => "Center", :door_ways =>"w,e,n,s")
    center_right_room= FactoryGirl.create(:room, :name => "Center Right", :door_ways =>"w,n,s")
    bottom_left_room= FactoryGirl.create(:room, :name => "Bottom Left", :door_ways =>"e,n")
    bottom_center_room= FactoryGirl.create(:room, :name => "Bottom Center", :door_ways =>"w,e,n")
    bottom_right_room= FactoryGirl.create(:room, :name => "Bottom Right", :door_ways =>"w,n")
    login_as(player, :scope => :player)
    visit room_path(center_room)
    click_on "Go East"
    expect(page).to have_content "Center Right"
  end
  describe "entering a room for the first time" do
    it "will have special text that will appear during the first time the player enters the room." do
      player = FactoryGirl.create(:player)
      character = FactoryGirl.create(:character, :player_id => player.id)
      noorester= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :first_time => true, :first_description => "I've not been here to Noorester", :normal_description => "Ohh not the Noorester room again.")
      centester= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :first_time => true, :first_description => "I've not been here to room Centester", :normal_description => "Ohh not the Centester room again.")
      login_as(player, :scope => :player)
        visit room_path(noorester)
        expect(page).to have_content "Noorester"
    end
  end

  describe "entering a room after the first time." do
    it "will have differnt text if the user has been to the room before" do
      player = FactoryGirl.create(:player)
      character = FactoryGirl.create(:character, :player_id => player.id)
      noorester= FactoryGirl.create(:room, :name => "Top Left", :door_ways =>"e,s", :first_time => true, :first_description => "I've not been here to Noorester", :normal_description => "Ohh not the Noorester room again.")
      centester= FactoryGirl.create(:room, :name => "Top Center", :door_ways =>"w,e,s", :first_time => true, :first_description => "I've not been here to room Centester", :normal_description => "Ohh not the Centester room again.")
      login_as(player, :scope => :player)
        visit room_path(centester)
        click_button "Go West"
        click_button "Go East"
        expect(page).to have_content "Ohh not the Centester room again."
    end
  end

end
