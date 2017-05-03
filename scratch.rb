
# For test room one
Tile.create({ tile_name: "tmp_corner", room_id: 1, row_max: 5, is_solid: false})
Tile.create({ tile_name: "tmp_wall", room_id: 1, row_max: 5, is_solid: false})
Tile.create({ tile_name: "tmp_floor", room_id: 1, row_max: 5, is_solid: false})
Tile.create({ tile_name: "tmp_door", room_id: 1, row_max: 5, is_solid: false})
Character.first.update({room_id:2});
