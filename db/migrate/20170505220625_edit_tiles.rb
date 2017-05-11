class EditTiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :tiles, :exit_to
    add_column :tiles, :exit_from, :integer
  end
end
