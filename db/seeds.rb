room_list = [
  ["Room 1", "e,s", true, "This is the first time I have been to room 1", "Room 1, again..." ],
  ["Room 2", "w,e,s", true, "This is the first time I have been to room 2", "Room 2, again..." ],
  ["Room 3", "w,s", true, "This is the first time I have been to room 3", "Room 3, again..." ],
  ["Room 4", "e,n,s", true, "This is the first time I have been to room 4", "Room 4, again..." ],
  ["Room 5", "w,e,n,s", true, "This is the first time I have been to room 5", "Room 5, again..." ],
  ["Room 6", "w,n,s", true, "This is the first time I have been to room 6", "Room 6, again..." ],
  ["Room 7", "n,e", true, "This is the first time I have been to room 7", "Room 7, again..." ],
  ["Room 8", "w,e,n", true, "This is the first time I have been to room 8", "Room 8, again..." ],
  ["Room 9", "w,n", true, "This is the first time I have been to room 9", "Room 9, again..." ],
  ["Item dummy 10", "w,n", true, "This is the first time I have been to room 9", "Room 9, again..." ],##dummy's used in intial creation to make the navigation sustem work.
  ["Item Test 11 ", "s", true, "Look at all the piles of junk, maybe there will be something useful here,", "How many times must I search this room?" ], ###Item test
  ["Item dummy 12", "w,n", true, "This is the first time I have been to room 9", "Room 9, again..." ],##dummy's used in intial creation to make the navigation sustem work.
  ["Item Test 13", "e", true, "Great, Another empty room. At least there is a way foward", "why did I come back here." ],
  ["Item Test 14", "w,e,n,s", true, "Okay three potential exits, yet the one to the east locked... maybe I can find a key somwhere", "can't unlock that door with out the key" ],
  ["Item Test 15", "w,e", true, "Hooray I did it!!! Wait.... THERE ARE NO EXITS!", "I hate this room." ],
  ["Item dummy 16", "w,n", true, "This is the first time I have been to room 9", "Room 9, again..." ],##dummy's used in intial creation to make the navigation sustem work.
  ["Item test 17", "n", true, "nothing but garbage, but perhaps there is something useful.", "maybe..." ],

]

room_list.each do | name, doors, first_time, first_description, normal_description|
  Room.create( name: name, door_ways: doors, first_time: first_time, first_description: first_description, normal_description: normal_description)
end

item_list = [
  ["Sword","A mighty sword, for a mighty robo.", true, false, false, "high", 17],
  ["Sword","A sword, for a mighty robo.", true, false, false, "medium", 11],
  ["Sword","A crappy sword, for a mighty robo.", true, false, false, "low", 11],
  ["A key","Using its powers you can tumble the locks to open a door!",true,false,true, "low", 11]
]
item_list.each do | title, description, obtainable, active, key_item, rarity, room_id|
  Item.create( title: title, description: description, obtainable: obtainable, active: active, key_item: key_item, rarity: rarity , room_id: room_id)
end
