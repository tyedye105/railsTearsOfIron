class SetDefaultOrginId < ActiveRecord::Migration[5.0]
  def change
    change_column_default :items, :origin_id, nil
  end
end
