class AddRoomId < ActiveRecord::Migration[5.0]
  def change
  add_column(:doors, :room_id, :integer )
  end
end
