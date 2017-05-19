
# For test room one
test.tiles.create({ tile_name:  "tmp_corner", row_max: 6, is_solid: true})
test.tiles.create({ tile_name: "tmp_wall", row_max: 9, is_solid: true})
test.tiles.create({ tile_name: "empty", row_max: 9, is_solid: false})
test.tiles.create({ tile_name: "blank", row_max: 9, is_solid:true})
test.tiles.create({ tile_name: "tmp_floor", row_max: 16, is_solid: false})
test.tiles.create({ tile_name: "tmp_door", row_max: 6, is_solid: false, transition_tile: 0})
test.tiles.create({ tile_name: "tmp_door", row_max: 6, is_solid: false, transition_tile: 1})
test.tiles.create({ tile_name: "tmp_door", row_max: 6, is_solid: false, transition_tile: 2})
test.tiles.create({ tile_name: "tmp_door", row_max: 6, is_solid: false, transition_tile: 3})

test.tiles.create({ tile_name: "arrow_up", row_max: 6, is_solid: false})
test.tiles.create({ tile_name: "arrow_down", row_max: 6, is_solid: false})
test.tiles.create({ tile_name: "arrow_left", row_max: 6, is_solid: false})
test.tiles.create({ tile_name: "arrow_right", row_max: 6, is_solid: false})
test.item.create({})
test.door.create({})
test.sentry.create({})
Room.create({name: "MVP Arrival", first_description: "You made it!", normal_description: "nothing has changed.", row_max:8})
Character.first.update({room_id:2})
Character.first.update({tile_id:304})
Tile.find().update({ is_solid: true})
Tile.find(300).update({ exit_to: 2})
Item.create({name:"component", room_id:nil, key_item: true, rarity:"low", img:"component", tile_id:nil})



.each do |tile|
  tile.update({room_id: })
end
