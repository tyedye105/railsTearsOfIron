class SetObtainableDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:items, :obtainable, true)
  end
end
