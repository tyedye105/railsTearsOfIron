class AddDefaultValuesToCharacters < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:characters, :hit_points, 100)
    change_column_default(:characters, :battery_level, 100)
    change_column_default(:characters, :is_alive, true)

  end
end
