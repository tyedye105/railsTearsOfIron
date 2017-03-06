class Room <ActiveRecord::Base

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

    def self.reset
      array_to_reset = Room.all
      array_to_reset.each do |room|
        if room.first_time === false
          room.update({:first_time => true})
        end
      end
    end

end
