class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :hit_points
      t.integer :battery_level
      t.integer :player_id
      t.boolean :is_alive
    end
  end
end
