class AddImgDoors < ActiveRecord::Migration[5.0]
  def change
    add_column :doors, :img, :string
  end
end
