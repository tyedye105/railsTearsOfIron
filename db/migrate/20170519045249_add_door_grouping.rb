class AddDoorGrouping < ActiveRecord::Migration[5.0]
  def change
    add_column :doors, :group_no, :integer
  end
end
