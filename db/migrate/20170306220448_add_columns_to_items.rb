class AddColumnsToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :key_item, :boolean
    add_column :items, :rariry, :string

  end
end
