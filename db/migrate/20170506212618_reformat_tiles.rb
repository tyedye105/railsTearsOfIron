class ReformatTiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :tiles, :exit_from
    remove_column :tiles, :arrive_at
    add_column :tiles, :transition_tile, :integer

    remove_column :doors, :door_location
    add_column :doors, :tile_id, :integer


  end
end
