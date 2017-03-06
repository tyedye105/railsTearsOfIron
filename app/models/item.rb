class Item < ActiveRecord::Base
  belongs_to :room

  def spawn_item
    is_active = self.active
    is_key = self.key_item
    is_rare = self.rarity
    if is_key === true
      is_active = true
      self.update({active: is_active})
      else
      "Item is already spawned."
    end
  end
end
