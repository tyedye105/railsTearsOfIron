class Tile < ActiveRecord::Base
  belongs_to :room
  has_one :character
end
