class AddPlayersToItems < ActiveRecord::Migration[5.0]
  def change
    add_column(:items, :character_id, :integer, :default => nil)
  end
end
