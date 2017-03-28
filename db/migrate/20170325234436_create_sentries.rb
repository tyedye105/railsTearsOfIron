class CreateSentries < ActiveRecord::Migration[5.0]
  def change
    create_table :sentries do |t|
      t.string :name
      t.boolean :active_patrol, :default => true
      t.integer :ptrl_range
      t.integer :distance_traveled, :default => 1
      t.string :ptrl_direction
      t.boolean :active, :default => true
      t.integer :room_id
      t.string :ptrl_route 
    end
  end
end
