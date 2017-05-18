room_list = [
  ["Endpoint", true, "Shit", "Shit.", 9 ],
  ["Dummy", nil, nil, nil, nil],
  ["Dummy", nil, nil, nil, nil],
  ['workshop', true, "This can’t be, the workshop is empty? Damn.  Hmm that chunk of wall looks suspect.”,  'If I had some explosives I could blow up the wall...", 7 ],
  ["Dummy", nil, nil, nil, nil],
  ["Dummy", nil, nil, nil, nil],
  ["Back way",  true, "At least there is not a laser field fence of death blocking my way...", 'I am going to need to find a sentry component to unlock this door', 9],
  ["Dummy", nil, nil, nil, nil],
  ["Dummy", nil, nil, nil, nil],
  ["Cargo Yard", true, "There is a sentry detected. Exercise caution.", "The sentry might have a gun, but they don’t have sensors on the back of their heads… yet.", 10],
  ["Facility Entrace", true, "Just the place I need to get to! With a convenient laser fence in the way...", " Things I can do about the laser fence: 0",9 ],
  ["Rundown Shack Inside", true, " Hopefully I can find something useful in this rundown shack.", "This whole town is in ruin… but where are the people?",8 ],
  [" South West Ruins", true, 'When I left this place, there was people and androids everywhere, what happened?", "That switch might activate the doors in the southeast ruins.' ,12 ],
  ["Streets", true, "What a disaster, I hope Hector is holed up in his workshop.", 'I have only been gone for three years… What the hell happened?', 9 ],
  ["South East Ruins", true, "Hmm that shack looks like it has not been opened in years, maybe something useful is in there.", "Perhaps there is a console elsewhere that will open that door..",8 ],
]

room_list.each do | name, first_time, first_description, normal_description, row_max|
  Room.create( name: name, first_time: first_time, first_description: first_description, normal_description: normal_description, row_max: row_max)
end

back_way = [
["facility_wall", 7, 9, true, nil],
["facility_wall_single", 7, 9, true, nil],
["facility_wall_single", 7, 9, true, nil],
["building_roof_topl", 7, 9, true, nil],
["building_roof_topc", 7, 9, true, nil],
["building_roof_topc", 7, 9, true, nil],
["building_roof_topc", 7, 9, true, nil],
["building_roof_topr", 7, 9, true, nil],
["facility_wall", 7, 9, true, nil],

["facility_wall", 7, 9, true, nil],
["facility_ground2", 7, 9, false, nil],
["facility_ground2", 7, 9, false, nil],
["building_roof_botl", 7, 9, true, nil],
["building_roof_botc", 7, 9, true, nil],
["building_roof_botc", 7, 9, true, nil],
["building_roof_botc", 7, 9, true, nil],
["building_roof_botr", 7, 9, true, nil],
["facility_wall", 7, 9, true, nil],

["facility_wall", 7, 9, true, nil],
["facility_ground2", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_wall_single", 7, 9, true, nil],
["facility_doorl_single", 7, 9, true, nil],
["facility_doorr_single", 7, 9, true, nil],
["facility_wall_single", 7, 9, true, nil],
["facility_wall_single", 7, 9, true, nil],
["facility_wall", 7, 9, true, nil],

["facility_wall", 7, 9, true, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_ground2", 7, 9, false, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_wall", 7, 9, true, nil],

["facility_wall", 7, 9, true, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_ground2", 7, 9, false, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_wall", 7, 9, true, nil],

["facility_wall", 7, 9, true, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_ground2", 7, 9, false, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_wall", 7, 9, true, nil],

["facility_wall", 7, 9, true, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_ground2", 7, 9, false, nil],
["facility_ground3", 7, 9, false, nil],
["facility_ground4", 7, 9, false, nil],
["facility_ground7", 7, 9, false, nil],
["facility_wall", 7, 9, true, nil],

["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil],
["blank", 7, 9, true, nil]
]
back_way.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

workshop = [
["blank", 4, 8, true, nil],
["facility_insidewall", 4, 8, true, nil],
["facility_insidewall", 4, 8, true, nil],
["facility_insidewall", 4, 8, true, nil],
["facility_insidewall", 4, 8, true, nil],
["facility_insidewall", 4, 8, true, nil],
["facility_insidewall", 4, 8, true, nil],
["blank", 4, 8, true, nil],

["blank", 4, 8, true, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["blank", 4, 8, true, nil],

["blank", 4, 8, true, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["blank", 4, 8, true, nil],

["blank", 4, 8, true, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["blank", 4, 8, true, nil],

["facility_outsidewall", 4, 8, true, nil],
["facility_outsidewall", 4, 8, true, nil],
["facility_insideground", 4, 8, false, nil],
["facility_insideground", 4, 8, false, nil],
["facility_outsidewall", 4, 8, true, nil],
["facility_outsidewall", 4, 8, true, nil],
["facility_outsidewall", 4, 8, true, nil],
["facility_outsidewall", 4, 8, true, nil],

["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil],
["blank", 4, 8, true, nil]

  ]
workshop.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

end_point = [
["blank", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["facility_insidewall", 1, 9, true, nil],
["blank", 1, 9, true, nil],

["blank", 1, 9, true, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["blank", 1, 9, true, nil],

["blank", 1, 9, true, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["blank", 1, 9, true, nil],

["blank", 1, 9, true, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["blank", 1, 9, true, nil],

["blank", 1, 9, true, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["blank", 1, 9, true, nil],

["blank", 1, 9, true, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["blank", 1, 9, true, nil],

["facility_outsidewall", 1, 9, true, nil],
["facility_outsidewall", 1, 9, true, nil],
["facility_insideground", 1, 9, false, nil],
["facility_insideground", 1, 9, false, nil],
["facility_outsidewall", 1, 9, true, nil],
["facility_outsidewall", 1, 9, true, nil],
["facility_outsidewall", 1, 9, true, nil],
["facility_outsidewall", 1, 9, true, nil],

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
end_point.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

cargo_room = [

["facility_wall_gap", 10, 9, true, nil],
["facility_wall_top", 10, 9, true, nil],
["facility_wall_gap", 10, 9, true, nil],
["facility_wall_top", 10, 9, true, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["facility_wall_top", 10, 9, true, nil],
["facility_wall_gap", 10, 9, true, nil],
["facility_wall_top", 10, 9, true, nil],

["facility_wall", 10, 9, true, nil],
["facility_wall", 10, 9, true, nil],
["facility_wall", 10, 9, true, nil],
["facility_wall", 10, 9, true, nil],
["facility_ground2", 10, 9, false, nil],
["facility_ground1", 10, 9, false, nil],
["facility_wall", 10, 9, true, nil],
["facility_wall", 10, 9, true, nil],
["facility_wall", 10, 9, true, nil],

["cargo_roof_topr", 10, 9, true, nil],
["facility_ground1", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground1", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["cargo_roof_topl", 10, 9, true, nil],

["cargo1_topr", 10, 9, true, nil],
["facility_ground1", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["cargo_roof_topl", 10, 9, false, nil],
["cargo_roof_topc", 10, 9, false, nil],
["cargo_roof_topr", 10, 9, false, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["cargo1_topl", 10, 9, true, nil],

["cargo2_botr", 10, 9, true, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["cargo1_topl", 10, 9, false, nil],
["cargo_topc", 10, 9, false, nil],
["cargo1_topr", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground1", 10, 9, false, nil],
["cargo2_botl", 10, 9, true, nil],

["cargo_roof_topr", 10, 9, true, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["cargo1_botl", 10, 9, false, nil],
["cargo1_botc", 10, 9, false, nil],
["cargo1_botr", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground1", 10, 9, false, nil],
["cargo_roof_topl", 10, 9, true, nil],

["cargo1_topr", 10, 9, true, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground1", 10, 9, false, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["cargo1_topl", 10, 9, true, nil],

["cargo1_botr", 10, 9, true, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground2", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground1", 10, 9, false, nil],
["facility_ground10", 10, 9, false, nil],
["facility_ground3", 10, 9, false, nil],
["cargo1_botl", 10, 9, true, nil],

["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil],
["blank", 10, 9, true, nil]

  ]
cargo_room.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end
blockade = [

["building_roof_topr", 11, 9, true, nil],
["facility_wall_gap", 11, 9, true, nil],
["facility_wall_top", 11, 9, true, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["facility_wall_top", 11, 9, true, nil],
["facility_wall_gap", 11, 9, true, nil],
["building_roof_topl", 11, 9, true, nil],

["building_roof_midr", 11, 9, true, nil],
["facility_wall", 11, 9, false, nil],
["facility_wall", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["facility_wall", 11, 9, false, nil],
["facility_wall", 11, 9, false, nil],
["building_roof_midl", 11, 9, true, nil],

["building_roof_botr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_roof_botl", 11, 9, true, nil],

["building_topr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_topl", 11, 9, true, nil],

["building_midr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_midl", 11, 9, true, nil],

["building_roof_topr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_roof_topl", 11, 9, true, nil],

["building_roof_botr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_roof_botl", 11, 9, true, nil],

["building_topr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_topl", 11, 9, true, nil],

["building_midr", 11, 9, true, nil],
["l_sidew1", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_center_ns", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["street_clean", 11, 9, false, nil],
["r_sidew1", 11, 9, false, nil],
["building_midl", 11, 9, true, nil],

["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil],
["blank", 11, 9, true, nil]

  ]
blockade.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

runodown_shack = [
["blank", 12, 8, true, nil],
["abdn_insidewall", 12, 8, true, nil],
["abdn_insidewall", 12, 8, true, nil],
["abdn_insidewall", 12, 8, true, nil],
["abdn_insidewall", 12, 8, true, nil],
["abdn_insidewall", 12, 8, true, nil],
["abdn_insidewall", 12, 8, true, nil],
["blank", 12, 8, true, nil],

["blank", 12, 8, true, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["blank", 12, 8, true, nil],

["blank", 12, 8, true, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["blank", 12, 8, true, nil],

["blank", 12, 8, true, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["blank", 12, 8, true, nil],

["abdn_outsidewall", 12, 8, true, nil],
["abdn_outsidewall", 12, 8, true, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_insideground", 12, 8, false, nil],
["abdn_outsidewall", 12, 8, true, nil],
["abdn_outsidewall", 12, 8, true, nil],
["abdn_outsidewall", 12, 8, true, nil],
["abdn_outsidewall", 12, 8, true, nil],

["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil],
["blank", 12, 8, true, nil]

  ]
runodown_shack.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

se_ruins = [

["building_roof_topr", 13 ,12, true, nil],
["facility_ground2", 13 ,12, true, nil],
["collapsedroof_botl", 13 ,12, true, nil],
["building_roof_botc", 13 ,12, true, nil],
["collapsedroof_botr", 13 ,12, true, nil],
["collapsedroof_botl", 13 ,12, true, nil],
["building_roof_botc", 13 ,12, true, nil],
["building_roof_botc", 13 ,12, true, nil],
["collapsedroof_botr", 13 ,12, true, nil],
["building_botl", 13 ,12, true, nil],
["building_botr", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],




["building_roof_midr", 13 ,12, true, nil],
["facility_ground1", 13 ,12, false, nil],
["collapsed_topl", 13 ,12, true, nil],
["building_topc", 13 ,12, true, nil],
["collapsed_topr", 13 ,12, true, nil],
["collapsed_topl", 13 ,12, true, nil],
["building_topc", 13 ,12, true, nil],
["building_topc", 13 ,12, true, nil],
["collapsed_topr", 13 ,12, true, nil],
["street_clean", 13 ,12,false, nil],
["street_center_we", 13 ,12, false, nil],
["blank", 13 ,12, true, nil],



["building_roof_botr", 13 ,12, true, nil],
["facility_ground2", 13 ,12, false, nil],
["collapsed_midl", 13 ,12, true, nil],
["building_midc", 13 ,12, true, nil],
["collapsed_midr", 13 ,12, true, nil],
["collapsed_midl", 13 ,12, true, nil],
["building_midc", 13 ,12, true, nil],
["building_midc", 13 ,12, true, nil],
["collapsed_midr", 13 ,12, true, nil],
["street_center_ns", 13, 12, false, nil],
["building_roof_topl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],


["building_topr", 13 ,12, true, nil],
["facility_ground2", 13 ,12, false, nil],
["collapsed_botl", 13 ,12, true, nil],
["building_botc", 13 ,12, true, nil],
["collapsed_botr", 13 ,12, true, nil],
["collapsed_botl", 13 ,12, true, nil],
["building_botc", 13 ,12, true, nil],
["building_botc", 13 ,12, true, nil],
["collapsed_botr", 13 ,12, true, nil],
["street_center_ns", 13, 12, false, nil],
["building_roof_midl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],



["building_midr", 13 ,12, true, nil],
["facility_ground2", 13 ,12, false, nil],
["facility_ground1", 13 ,12, false, nil],
["facility_ground2", 13 ,12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground2", 13, 12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground4", 13, 12, false, nil],
["street_center_ns", 13, 12, false, nil],
["building_roof_botl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],


["blank", 13 ,12, true, nil],
["abdn_insidewall", 13 ,12, true, nil],
["abdn_insidewall", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground2", 13, 12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground4", 13, 12, false, nil],
["street_center_ns", 13, 12, false, nil],
["building_topl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],


["blank", 13 ,12, true, nil],
["abdn_insideground", 13 ,12, false, nil],
["abdn_insideground", 13 ,12, false, nil],
["blank", 13 ,12, true, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground2", 13, 12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground4", 13, 12, false, nil],
["street_crater", 13, 12, false, nil],
["building_midl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],



["blank", 13 ,12, true, nil],
["abdn_insideground", 13 ,12, false, nil],
["abdn_insideground", 13 ,12, false, nil],
["rundown_botr", 13 ,12, true, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground2", 13, 12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground4", 13, 12, false, nil],
["building_midl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],


["rundown_botl", 13 ,12, true, nil],
["abdn_insideground", 13 ,12, false, nil],
["abdn_insideground", 13 ,12, false, nil],
["abdn_insideground", 13 ,12, false, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground2", 13, 12, false, nil],
["facility_ground3", 13, 12, false, nil],
["facility_ground4", 13, 12, false, nil],
["facility_ground1", 13, 12, false, nil],
["facility_ground4", 13, 12, false, nil],
["building_midl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil],

["building_roof_topl", 13 ,12, true, nil],
["building_roof_topc", 13 ,12, true, nil],
["building_roof_topr", 13 ,12, true, nil],
["building_roof_topl", 13 ,12, true, nil],
["building_roof_topc", 13 ,12, true, nil],
["building_roof_topr", 13 ,12, true, nil],
["building_roof_topl", 13 ,12, true, nil],
["building_roof_topc", 13 ,12, true, nil],
["building_roof_topc", 13 ,12, true, nil],
["building_roof_topr", 13 ,12, true, nil],
["building_midl", 13 ,12, true, nil],
["blank", 13 ,12, true, nil]



  ]
se_ruins.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

main_street = [
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["building_roof_topl", 14, 11, true, nil],
["building_roof_topr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_roof_topl", 14, 11, true, nil],
["building_roof_topr", 14, 11, true, nil],
["blank", 14, 11, true, nil],


["blank", 14, 11, true, nil],
["building_roof_botl", 14, 11, true, nil],
["building_roof_botr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_roof_botl", 14, 11, true, nil],
["building_roof_botr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["building_topl", 14, 11, true, nil],
["building_topr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_crater", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_topl", 14, 11, true, nil],
["building_topr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["building_midl", 14, 11, true, nil],
["building_midr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_midl", 14, 11, true, nil],
["building_midr", 14, 11, true, nil],
["blank", 14, 11, true, nil],


["blank", 14, 11, true, nil],
["building_botl", 14, 11, true, nil],
["building_botr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_botl", 14, 11, true, nil],
["building_botr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["street_center_we", 14, 11, false, nil],
["street_center_we", 14, 11, false, nil],
["street_center_we", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_crater", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_we", 14, 11, false, nil],
["street_center_we", 14, 11, false, nil],
["street_center_we", 14, 11, false, nil],
["blank", 14, 11, true, nil],



["blank", 14, 11, true, nil],
["building_roof_topl", 14, 11, true, nil],
["collapsedroof_topr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_roof_topl", 14, 11, true, nil],
["building_roof_topr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["building_roof_midl", 14, 11, true, nil],
["collapsedroof_midr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_roof_topl", 14, 11, true, nil],
["building_roof_topr", 14, 11, true, nil],
["blank", 14, 11, true, nil],


["blank", 14, 11, true, nil],
["building_roof_botl", 14, 11, true, nil],
["collapsedroof_botr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_roof_botl", 14, 11, true, nil],
["building_roof_botr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["building_topl", 14, 11, true, nil],
["collapsed_topr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_crater", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_topl", 14, 11, true, nil],
["building_topr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["building_midl", 14, 11, true, nil],
["collapsedroof_midr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_midl", 14, 11, true, nil],
["building_midr", 14, 11, true, nil],
["blank", 14, 11, true, nil],


["blank", 14, 11, true, nil],
["building_botl", 14, 11, true, nil],
["collapsed_botr", 14, 11, true, nil],
["l_sidew1", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["street_center_ns", 14, 11, false, nil],
["street_clean", 14, 11, false, nil],
["r_sidew1", 14, 11, false, nil],
["building_botl", 14, 11, true, nil],
["building_botr", 14, 11, true, nil],
["blank", 14, 11, true, nil],

["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil],
["blank", 14, 11, true, nil]

  ]
main_street.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end

se_ruins = [
["blank", 15, 8, true, nil],
["building_roof_topr", 15, 8, true, nil],
["building_botc", 15, 8, true, nil],
["building_roof_botl", 15, 8, true, nil],
["building_roof_botc", 15, 8, true, nil],
["building_roof_botc", 15, 8, true, nil],
["building_roof_botr", 15, 8, true, nil],
["building_roof_topl", 15, 8, true, nil],

["blank", 15, 8, true, nil],
["building_roof_botr", 15, 8, true, nil],
["facility_ground4", 15, 8, true, nil],
["rundown_botl", 15, 8, true, nil],
["rundown_openl", 15, 8, false, nil],
["rundown_openr", 15, 8, false, nil],
["rundown_botr", 15, 8, true, nil],
["building_roof_midl", 15, 8, true, nil],


["blank", 15, 8, true, nil],
["building_topl", 15, 8, true, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground4", 15, 8, false, nil],
["facility_ground3", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["building_roof_botl", 15, 8, true, nil],


["blank", 15, 8, true, nil],
["building_midl", 15, 8, true, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground4", 15, 8, false, nil],
["facility_ground3", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["building_topl", 15, 8, true, nil],

["blank", 15, 8, true, nil],
["building_botl", 15, 8, true, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground4", 15, 8, false, nil],
["facility_ground3", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["building_midl", 15, 8, true, nil],


["blank", 15, 8, true, nil],
["street_center_we", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground4", 15, 8, false, nil],
["facility_ground3", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["building_botl", 15, 8, true, nil],

["blank", 15, 8, true, nil],
["building_roof_topr", 15, 8, true, nil],
["facility_ground4", 15, 8, false, nil],
["facility_ground3", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["building_roof_topl", 15, 8, true, nil],

["blank", 15, 8, true, nil],
["building_roof_botr", 15, 8, true, nil],
["facility_ground2", 15, 8, false, nil],
["facility_ground1", 15, 8, false, nil],
["facility_ground2", 15, 8, false, nil],
["facility_ground3", 15, 8, false, nil],
["facility_ground4", 15, 8, false, nil],
["building_roof_botl", 15, 8, true, nil],


["blank", 15, 8, true, nil],
["building_topr", 15, 8, true, nil],
["building_roof_topl", 15, 8, true, nil],
["building_roof_topc", 15, 8, true, nil],
["building_roof_topc", 15, 8, true, nil],
["building_roof_topc", 15, 8, true, nil],
["building_roof_topr", 15, 8, true, nil],
["building_topl", 15, 8, true, nil],


  ]
se_ruins.each do | tile_name, room_id, row_max, is_solid, transition_tile|
  Tile.create( tile_name: tile_name, room_id: room_id, row_max: row_max, is_solid: is_solid, transition_tile: transition_tile)
end
