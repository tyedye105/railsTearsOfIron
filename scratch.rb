
# For test room one
test.tiles.create({ tile_name:  "tmp_corner", row_max: 8, is_solid: true})
test.tiles.create({ tile_name: "tmp_wall", row_max: 8, is_solid: true})
test.tiles.create({ tile_name: "tmp_floor", row_max: 8, is_solid: false})
test.tiles.create({ tile_name: "tmp_door", row_max: 8, is_solid: false, transition_tile: 0})
test.tiles.create({ tile_name: "tmp_door", row_max: 8, is_solid: false, transition_tile: 1})
test.tiles.create({ tile_name: "tmp_door", row_max: 8, is_solid: false, transition_tile: 2})
test.tiles.create({ tile_name: "tmp_door", row_max: 8, is_solid: false, transition_tile: 3})
Character.first.update({room_id:2})
Character.first.update({tile_id:304})
Tile.find().update({ is_solid: true})
Tile.find(300).update({ exit_to: 2})



.each do |tile|
  tile.update({room_id: })
end
