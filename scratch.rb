
# For test room one
test.tiles.create({ tile_name: "tmp_corner", room_id: 1, row_max: 5, is_solid: true})
test.tiles.create({ tile_name: "tmp_wall", room_id: 1, row_max: 5, is_solid: true})
test.tiles.create({ tile_name: "tmp_floor", room_id: 1, row_max: 5, is_solid: false})
test.tiles.create({ tile_name: "tmp_door", room_id: 1, row_max: 5, is_solid: false})
Character.first.update({room_id:2})
Character.first.update({tile_id:304})
Tile.find().update({ is_solid: true})
