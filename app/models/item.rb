class Item < ActiveRecord::Base
  belongs_to :room
  belongs_to :characters, :optional => true

  def spawn_item
    is_active = self.active
    is_key = self.key_item
    is_rare = self.rarity
    check = rand(20)
    if is_key === true
      is_active = true
      self.update({active: is_active})
      else
      if is_rare === "high"
        if check >= 18
          is_active = true
            self.update({active: is_active})
          end
        elsif is_rare === "medium"
          if check >= 14
            is_active = true
              self.update({active: is_active})
            end
        elsif is_rare === "low"
          if check >= 5
            is_active = true
              self.update({active: is_active})
            end
          end
        end
        is_active
  end
end
