room_list = [
  ["Room 1", "e,s", "grey" ],
  ["Room 2", "w,e,s", "grey" ],
  ["Room 3", "w,s", "grey" ],
  ["Room 4", "e,n,s", "grey" ],
  ["Room 5", "w,e,n,s", "grey" ],
  ["Room 6", "w,n,s", "grey" ],
  ["Room 7", "n,e", "grey" ],
  ["Room 8", "w,e,n", "grey" ],
  ["Room 9", "w,n", "grey" ]
]

room_list.each do | name, doors, color|
  Room.create( name: name, door_ways: doors, color: color )
end
