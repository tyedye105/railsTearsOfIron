class AddIsNew < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :is_new, :boolean, :default => true
  end
end
