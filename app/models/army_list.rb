class ArmyList < ActiveRecord::Base
  validates_presence_of :name, :player
  has_many :squads

  def point
    point = 0
    self.squads.each do |squad|
      point += squad.point
    end
    return point
  end
end
