class SetActiveDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:items, :active, false)
  end
end
