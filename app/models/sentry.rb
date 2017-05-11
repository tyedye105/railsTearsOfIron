class Sentry < ActiveRecord::Base
belongs_to :tile

  def toggle_patrol
    if self.active_patrol === true
      self.update({:active_patrol => false})
    elsif self.active_patrol === false
      self.update({:active_patrol => true})
    end
    self.active_patrol
  end

  def mvin_direction
    direction = self.ptrl_direction[0]
    if direction === "n"
      self.update({:room_id => self.room_id - 3})
    elsif direction === "s"
      self.update({:room_id => self.room_id + 3})
    elsif direction === "e"
      self.update({:room_id => self.room_id + 1})
    elsif direction === "w"
      self.update({:room_id => self.room_id - 1})
    end
  end


  def switch_direction
      reverse =self.ptrl_direction.reverse
    self.update({:ptrl_direction => reverse})
    reverse
  end

  def sentry_move
    has_traveled = self.distance_traveled
    if has_traveled === self.ptrl_range
        self.toggle_patrol
        self.update({:distance_traveled => 1})
    elsif has_traveled < self.ptrl_range && self.active_patrol === true
      self.mvin_direction
      self.update({:distance_traveled => has_traveled + 1})
    elsif self.active_patrol === false
      self.toggle_patrol
      self.switch_direction
    end
  end

end
