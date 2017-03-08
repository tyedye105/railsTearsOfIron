FactoryGirl.define do
  factory :room do
    name "Room 1"
    door_ways "e,s"
    first_time true
    first_description " This the first time."
    normal_description "Not again..."
  end
  factory :item do
    title "Sword"
    description "A sword"
    obtainable true
    active false
    key_item true
    rarity "low"
  end
  factory :player do
    name "Morty"
    username "Robotow"
    email "user223@gmail.com"
    password "asdffa"
  end
  factory :character do
    name "Robo"
    hit_points 100
    battery_level 100
    is_alive true
  end
end
