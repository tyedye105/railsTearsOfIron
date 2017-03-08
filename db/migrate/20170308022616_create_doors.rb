class CreateDoors < ActiveRecord::Migration[5.0]
  def change
    create_table :doors do |t|
      t.string :name
      t.string :door_location
      t.boolean :is_locked, :default => true
      t.boolean :active, :default => true
    end
  end
end
