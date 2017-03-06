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
