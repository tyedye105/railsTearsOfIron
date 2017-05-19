class Door <ActiveRecord::Base
  belongs_to :tile

  define_singleton_method :shut_the do
    Door.all.each do |door|
    door.update({active: true, is_locked: true})
    end
  end

  define_singleton_method :close_group do |number|
    doors = []
    Door.all.each do |door|
      door_to_push = Door.find_by(group_no: number)
      doors.push(door_to_push)
    end
    doors
  end

end
