class Door <ActiveRecord::Base
  belongs_to :tile

  define_singleton_method :shut_the do
    Door.all.each do |door|
    door.update({active: true, is_locked: true})
    end
  end

    define_singleton_method :close_group do |number|
      doors = Door.all
      found_doors = []
      doors.each do |door|
        if door.group_no === number
        found_doors.push(door)
        end
      end
      found_doors
    end

end
