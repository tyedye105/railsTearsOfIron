class Item < ActiveRecord::Base
  belongs_to :room, :optional => true
  belongs_to :characters, :optional => true

    def consume_item
      self.destroy
    end

    def pick_it_up
      picked_up = self.obtainable
      picked_up = false
      off_the_ground = self.active
      off_the_ground = false
      self.update({obtainable: picked_up, active: off_the_ground})
    end

    def item_reset
      obtainable = self.obtainable
      active = self.active
        if obtainable === false
          obtainable = true
          self.update({obtainable: obtainable})
        end
        if active === true
          active = false
          self.update({active: active})
        end
    end


  def spawn_item
    is_active = self.active
    is_key = self.key_item
    is_rare = self.rarity
    is_obtainanble = self.obtainable
    check = rand(20)
    if is_obtainanble === true
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
        else
          "all items have been spawned"
        end

    end
end
