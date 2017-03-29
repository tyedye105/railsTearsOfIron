class Sentry < ActiveRecord::Base
belongs_to :room

  def toggle_patrol
    if self.active_patrol === true
      self.update({:active_patrol => false})
    elsif self.active_patrol === false
      p "booty"
      self.update({:active_patrol => true})
    end
    self.active_patrol
  end

end
