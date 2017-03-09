class Door <ActiveRecord::Base
  belongs_to :room

  def shut_the
    self.update({active: true, is_locked: true})
  end
end
