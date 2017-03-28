class FixSentry < ActiveRecord::Migration[5.0]
  def change
    remove_column(:sentries, :ptrl_route)
  end
end
