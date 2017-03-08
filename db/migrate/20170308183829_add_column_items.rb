class AddColumnItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :origin_id, :integer
  end
end
