class FixCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters,  :tile_id, :integer,  :default => 148
    add_column :characters, :room_id, :integer,  :default => 14
    add_column :characters, :previous_tile, :integer, :default =>  148
    add_column :characters, :facing_direction, :integer, :default => 1
  end
end
