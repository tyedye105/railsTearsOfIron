class AddReqItem < ActiveRecord::Migration[5.0]
  def change
    add_column :doors, :req_item, :string
  end
end
