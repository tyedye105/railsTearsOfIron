class Tile < ActiveRecord::Base
  belongs_to :room
  has_one :character
  has_one :door
  has_one :item
  has_one :sentry


  def get_moves
    start = self.id
    row_max = self.row_max
    directions = [-row_max, row_max, 1, -1]
    moves = []
    directions.each do |direction|
      move = Tile.find(start + direction)
        moves.push(move)
      end
    moves
  end
end
