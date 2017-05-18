class AddDefaultToCharacter < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :tile_id
    remove_column :characters, :room_id
    remove_column :characters, :previous_tile
    remove_column :characters, :facing_direction
  end
end
