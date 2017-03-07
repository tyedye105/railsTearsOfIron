class Room <ActiveRecord::Base
  has_many :items

    def been_there?
    first_time =  self.first_time
        if first_time === true
            "no"
            first_time = false
            self.update({:first_time => first_time})
        elsif first_time === false
          "yes"
          first_time = true
          self.update({:first_time => first_time})
        end
    end

    def empty?
      item_count = self.items.length
      items_found = []
        self.items.each do |item|
          if item.obtainable === false
            items_found.push(item)
          end
        end
        if item_count === items_found.length
          true
        else
          false
        end
    end

    def self.reset
      array_to_reset = Room.all
      array_to_reset.each do |room|
        if room.first_time === false
          room.update({:first_time => true})
        end
      end
    end

end
