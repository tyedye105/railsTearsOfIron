class Door <ActiveRecord::Base
  belongs_to :tile

  def shut_the
    self.update({active: true, is_locked: true})
  end
end
