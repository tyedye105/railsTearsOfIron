class Character < ActiveRecord::Base
  belongs_to :player
  has_many :items

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
