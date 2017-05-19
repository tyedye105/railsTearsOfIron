class Door <ActiveRecord::Base
  belongs_to :tile

  define_singleton_method :shut_the do
    Door.all.each do |door|
    door.update({active: true, is_locked: true})
    end
  end

end
