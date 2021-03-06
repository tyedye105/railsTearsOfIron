class Room <ActiveRecord::Base
  has_many :items
  has_many :doors
  has_many :sentries
  has_many :tiles

    def locate(origin_id)
      found_item = self.items.find(origin_id)
      found_item
    end
    def get_deast(east)
      direction = east
      self.doors.find_by(door_location: east)
    end

    def directions_blocked
      possible_directions = self.door_ways.split(",")
      possible_doors = self.doors
      blocked_paths = []
      possible_directions.each do |direction|
        possible_doors.each do |door|
          if direction === door.door_location
            blocked_paths.push(door.door_location)
          end
        end
      end
      blocked_paths
    end


    def been_there?
    first_time =  self.first_time
        if first_time === true
            "no"
            first_time = false
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
        room.items.each do |item|
          item.item_reset
          # 
        end
        if room.first_time === false
          room.update({:first_time => true})
        end
      end
    end

end
