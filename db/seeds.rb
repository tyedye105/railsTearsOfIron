room_list = [
  ["Back way",  true, "At least there is not a laser field fence of death blocking my way...", 'I am going to need to find a sentry component to unlock this door', 9],
  ['Backway entrance', true, "This can’t be, the workshop is empty? Damn.  Hmm that chunk of wall looks suspect.”,  'If I had some explosives I could blow up the wall...", 7 ],
  ["Endpoint", true, "Shit", "Shit.", 9 ],
  ["Cargo Yard", true, "There is a sentry detected. Exercise caution.", "The sentry might have a gun, but they don’t have sensors on the back of their heads… yet.", 9],
  ["Facility Entrace", true, "Just the place I need to get to! With a convenient laser fence in the way...", " Things I can do about the laser fence: 0",9 ],
  ["Rundown Shack Inside", true, " Hopefully I can find something useful in this rundown shack.", "This whole town is in ruin… but where are the people?",8 ],
  [" South West Ruins", true, 'When I left this place, there was people and androids everywhere, what happened?", "That switch might activate the doors in the southeast ruins.' ,14 ],
  ["Streets", true, "What a disaster, I hope Hector is holed up in his workshop.", 'I have only been gone for three years… What the hell happened?', 9 ],
  ["South Eat Ruins", true, "Hmm that shack looks like it has not been opened in years, maybe something useful is in there.", "Perhaps there is a console elsewhere that will open that door..",11 ],
]

room_list.each do | name, first_time, first_description, normal_description, row_max|
  Room.create( name: name, first_time: first_time, first_description: first_description, normal_description: normal_description, row_max: row_max)
end

tile_list1 = [
["facility_wall", 1, 9, true, nil],
["facility_wall_single", 1, 9, true, nil],
["facility_wall_single", 1, 9, true, nil],
["building_roof_topl", 1, 9, true, nil],
["building_roof_topc", 1, 9, true, nil],
["building_roof_topc", 1, 9, true, nil],
["building_roof_topc", 1, 9, true, nil],
["building_roof_topr", 1, 9, true, nil],
["facility_wall", 1, 9, true, nil],

["facility_wall", 1, 9, true, nil],
["facility_ground2", 1, 9, false, nil],
["facility_ground2", 1, 9, false, nil],
["building_roof_botl", 1, 9, true, nil],
["building_roof_botc", 1, 9, true, nil],
["building_roof_botc", 1, 9, true, nil],
["building_roof_botc", 1, 9, true, nil],
["building_roof_botr", 1, 9, true, nil],
["facility_wall", 1, 9, true, nil],

["facility_wall", 1, 9, true, nil],
["facility_ground2", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_wall_single", 1, 9, true, nil],
["facility_doorl_single", 1, 9, true, nil],
["facility_doorr_single", 1, 9, true, nil],
["facility_wall_single", 1, 9, true, nil],
["facility_wall_single", 1, 9, true, nil],
["facility_wall", 1, 9, true, nil],

["facility_wall", 1, 9, true, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_ground2", 1, 9, false, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_wall", 1, 9, true, nil],

["facility_wall", 1, 9, true, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_ground2", 1, 9, false, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_wall", 1, 9, true, nil],

["facility_wall", 1, 9, true, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_ground2", 1, 9, false, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_wall", 1, 9, true, nil],

["facility_wall", 1, 9, true, nil],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, 1],
["facility_ground2", 1, 9, false, 1],
["facility_ground3", 1, 9, false, nil],
["facility_ground4", 1, 9, false, nil],
["facility_ground1", 1, 9, false, nil],
["facility_wall", 1, 9, true, nil],

["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil],
["blank", 1, 9, true, nil]
]
tile_list1.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

tile_list2 = [
["blank", 2, 8, true, nil],
["facility_insidewall", 2, 8, true, nil],
["facility_insidewall", 2, 8, true, nil],
["facility_insidewall", 2, 8, true, nil],
["facility_insidewall", 2, 8, true, nil],
["facility_insidewall", 2, 8, true, nil],
["facility_insidewall", 2, 8, true, nil],
["blank", 2, 8, true, nil],

["blank", 2, 8, true, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["blank", 2, 8, true, nil],

["blank", 2, 8, true, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["blank", 2, 8, true, nil],

["blank", 2, 8, true, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["blank", 2, 8, true, nil],

["facility_outsidewall", 2, 8, true, nil],
["facility_outsidewall", 2, 8, true, nil],
["facility_insideground", 2, 8, false, nil],
["facility_insideground", 2, 8, false, nil],
["facility_outsidewall", 2, 8, true, nil],
["facility_outsidewall", 2, 8, true, nil],
["facility_outsidewall", 2, 8, true, nil],
["facility_outsidewall", 2, 8, true, nil],
  ]
tile_list2.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

tile_list3 = [
["blank", 3, 8, true, nil],
["facility_insidewall", 3, 8, true, nil],
["facility_insidewall", 3, 8, true, nil],
["facility_insidewall", 3, 8, true, nil],
["facility_insidewall", 3, 8, true, nil],
["facility_insidewall", 3, 8, true, nil],
["facility_insidewall", 3, 8, true, nil],
["blank", 3, 8, true, nil],

["blank", 3, 8, true, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["blank", 3, 8, true, nil],

["blank", 3, 8, true, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["blank", 3, 8, true, nil],

["blank", 3, 8, true, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["blank", 3, 8, true, nil],

["facility_outsidewall", 3, 8, true, nil],
["facility_outsidewall", 3, 8, true, nil],
["facility_insideground", 3, 8, false, nil],
["facility_insideground", 3, 8, false, nil],
["facility_outsidewall", 3, 8, true, nil],
["facility_outsidewall", 3, 8, true, nil],
["facility_outsidewall", 3, 8, true, nil],
["facility_outsidewall", 3, 8, true, nil],
  ]
tile_list3.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end
