class FixRarity < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :rariry, :string
      add_column :items, :rarity, :string
  end
end
