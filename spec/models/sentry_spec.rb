require 'rails_helper'

describe Sentry do
  test_room = FactoryGirl.create(:room)
  test_sentry = FactoryGirl.create(:sentry, :room_id => test_room.id)

describe "#toggle_patrol" do
  it "will toggle the active_patrol to false" do
    expect(test_sentry.toggle_patrol).to eq false
    end
  end

  describe "#switch_direction" do
    it "will reverse the ptrl_direction" do
      expect(test_sentry.switch_direction).to eq "b,a"
    end
  end
end
