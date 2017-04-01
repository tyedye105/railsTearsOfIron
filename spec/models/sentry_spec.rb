require 'rails_helper'

describe Sentry do

before(:each) do
  @test_room = FactoryGirl.create(:room)
  @test_sentry = FactoryGirl.create(:sentry, :room_id => @test_room.id)
end

describe "#toggle_patrol" do
  it "will toggle the active_patrol to false" do
    expect(@test_sentry.toggle_patrol).to eq false
    end
  end

  describe "#mvin_direction" do
    it "move sentry in the first direction(n,s,e,w) listed in ptrl_direction" do
      @test_sentry.mvin_direction
      expect(@test_sentry.room_id).to eq (@test_room.id - 3)
    end
    it "move sentry north" do
      @test_sentry.ptrl_direction = "n"
      @test_sentry.mvin_direction
      expect(@test_sentry.room_id).to eq (@test_room.id - 3)
    end
    it "move sentry south" do
      @test_sentry.ptrl_direction = "s"
      @test_sentry.mvin_direction
      expect(@test_sentry.room_id).to eq (@test_room.id + 3)
    end
    it "move sentry east" do
      @test_sentry.ptrl_direction = "e"
      @test_sentry.mvin_direction
      expect(@test_sentry.room_id).to eq (@test_room.id + 1)
    end
    it "move sentry west" do
      @test_sentry.ptrl_direction = "w"
      @test_sentry.mvin_direction
      expect(@test_sentry.room_id).to eq (@test_room.id - 1)
    end
  end

  describe "#switch_direction" do
    it "will reverse the ptrl_direction" do
      expect(@test_sentry.switch_direction).to eq "s,n"
    end
  end

  describe "#sentry_move" do
    it "will increase the distance_traveled by 1 " do
      @test_sentry.sentry_move
      expect(@test_sentry.distance_traveled).to eq 2
    end
    it "will not move to another room if distance_traveled is equal to ptrl_range" do
      @test_sentry.distance_traveled = 3
      @test_sentry.sentry_move
      expect(@test_sentry.room_id).to eq @test_room.id
    end

    it "will only move when active_patrol = true" do
      @test_sentry.active_patrol = false
      @test_sentry.sentry_move
      expect(@test_sentry.distance_traveled).to eq 1
    end

    it "will upon becoming active. " do
      @test_sentry.active_patrol = false
      @test_sentry.sentry_move
      expect(@test_sentry.ptrl_direction).to eq "s,n"
    end
    it "when ptrl_range and distance_traveled are eqaul it will toggle ptrl_active to false." do
      @test_sentry.distance_traveled = 3
      @test_sentry.sentry_move
      expect(@test_sentry.active_patrol).to eq false
    end

    it "when ptrl_range and distance-traveled are eqaul, it will reset distance_traveled to back to 1" do
      @test_sentry.distance_traveled = 3
      @test_sentry.sentry_move
      expect(@test_sentry.distance_traveled).to eq 1

    end

    it "will move the sentry in the proper direction. (default n)" do
      @test_sentry.sentry_move
      expect(@test_sentry.room_id).to eq @test_room.id - 3
    end

    it "will check if active_patrol is false, and set it true" do
      @test_sentry.active_patrol = false
      @test_sentry.sentry_move
      expect(@test_sentry.active_patrol).to eq true
    end
  end
end
