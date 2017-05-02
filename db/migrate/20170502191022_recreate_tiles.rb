class RecreateTiles < ActiveRecord::Migration[5.0]
  def change
    create_table :tiles do |t|
      t.string :tile_name
      t.integer :room_id
      t.integer :row_max
      t.boolean :is_solid
      t.integer :arrive_at
      t.integer :exit_to
    end
  end
end
