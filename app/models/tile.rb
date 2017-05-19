class Tile < ActiveRecord::Base
  belongs_to :room
  has_one :character
  has_one :door
  has_many :items
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

  def is_nearby?(tile_id)
    start = self.id
    row_max = self.row_max
    directions = [-row_max, row_max, 1, -1]
    neighbors = []
    directions.each do |direction|
      neighbor = Tile.find(start + direction)
        neighbors.push(neighbor.id)
      end
     neighbors.include?(tile_id)
  end
end
