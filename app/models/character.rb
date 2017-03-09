class Character < ActiveRecord::Base
  belongs_to :player
  has_many :items

  def four_way_move
    self.update({:battery_level => self.battery_level - 4})
    if self.battery_level <= 0
      self.update({:is_alive => false})
    end
  end
  def scan ##It shouldn't cost energy. Hack
    self.update({:battery_level => self.battery_level + 4})
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
    has_item = nil
    character_inventory = self.items.all
    character_inventory.each do |comparison_item|
      if item === comparison_item.title
        has_item = true
      else
        has_item = false
      end
    end
    has_item
  end


  def do_you_have_many?(item)
    item
    has_x = 0
    character_inventory = self.items.all
      character_inventory.each do |comparison_item|
        if item === comparison_item.title
          has_x = has_x + 1
        else
          has_x = has_x + 0
        end
      end
      has_x
    end

end
