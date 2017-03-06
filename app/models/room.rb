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
end
