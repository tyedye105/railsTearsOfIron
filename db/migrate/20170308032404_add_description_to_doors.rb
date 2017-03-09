class AddDescriptionToDoors < ActiveRecord::Migration[5.0]
  def change
    add_column :doors, :description, :string
  end
end
