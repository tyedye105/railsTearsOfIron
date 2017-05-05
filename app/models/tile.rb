class Tile < ActiveRecord::Base
  belongs_to :room
  has_one :character

  def get_moves
    start = self.id
    row_max = self.row_max
    directions = [-row_max, row_max, 1, -1]
    moves = []
    directions.each do |direction|
      move = Tile.find(start + direction)
        moves.push(move.is_solid)
      end
    moves
  end

end
