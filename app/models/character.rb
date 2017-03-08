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
end
