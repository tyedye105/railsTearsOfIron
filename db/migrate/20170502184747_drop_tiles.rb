class DropTiles < ActiveRecord::Migration[5.0]
  def change
    drop_table :tiles do |t|
      t.integer :tile_no
      t.integer :room_id
      t.integer :character_id
      t.integer :item_id
      t.integer :sentry_id
    end
  end
end
