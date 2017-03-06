class AddFirstTimeToRoom < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :color
    add_column :rooms, :first_time, :boolean, :default => true
    add_column :rooms, :first_description, :string
    add_column :rooms, :normal_description, :string

  end
end
