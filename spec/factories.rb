FactoryGirl.define do
  factory :player do
    
  end
  factory :room do
    name "Room 1"
    door_ways "e,s"
    first_time true
    first_description " This the first time."
    normal_description "Not again..."
  end
  factory :item do
    title "Room 1"
    description "e,s"
    obtainable true
    active false
    key_item true
    rarity "low"
  end
end
