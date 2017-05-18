class ModifyItemsCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :previous_tile, :integer
    add_column :characters, :facing_direction, :integer
    add_column :items, :img, :string
  end
end
