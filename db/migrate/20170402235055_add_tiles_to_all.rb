class AddTilesToAll < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :tile_id, :integer
    add_column :characters, :tile_id, :integer
    add_column :items, :tile_id, :integer
    add_column :sentries, :tile_id, :integer
  end
end
