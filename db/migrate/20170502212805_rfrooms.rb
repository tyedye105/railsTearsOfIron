class Rfrooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :tile_id
    add_column :rooms, :row_max, :integer
  end
end
