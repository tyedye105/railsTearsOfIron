class AddRoomidToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column(:characters, :room_id, :integer)
  end
end
