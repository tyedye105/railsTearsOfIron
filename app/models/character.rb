class Character < ActiveRecord::Base
  belongs_to :player
  has_many :items
  belongs_to :tile, optional: true
  belongs_to :room, optional: true


  def four_way_move
    self.update({:battery_level => self.battery_level - 0})
    if self.battery_level <= 0
      self.update({:is_alive => false})
    end
  end
  def scan ##It shouldn't cost energy. Hack
    self.update({:battery_level => self.battery_level + 6})
  end

  def hurt
    self.update({:hit_points => self.hit_points - 20})
    if self.hit_points <= 0
      self.update({:is_alive => false})
    end
  end


  def game_start
    self.update({:is_new =>false})
  end

  def do_you_have?(item)
    item
    has_item = false
    character_inventory = self.items.all

      character_inventory.each do |comparison_item|
        if item === comparison_item.name
          has_item = true
        end
      end
    has_item
  end


  def do_you_have_many?(item)
    item
    has_x = 0
    character_inventory = self.items.all
      character_inventory.each do |comparison_item|
        if item === comparison_item.name
          has_x = has_x + 1
        else
          has_x = has_x + 0
        end
      end
      has_x
    end

end
