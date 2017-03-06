class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.boolean :obtainable
      t.boolean :active
      t.integer :room_id
    end
  end
end
