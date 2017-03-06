FactoryGirl.define do
  factory :room do
    name "Room 1"
    door_ways "e,s"
    first_time true
    first_description " This the first time."
    normal_description "Not again..."
  end
end
