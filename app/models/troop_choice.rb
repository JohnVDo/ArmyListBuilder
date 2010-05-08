class TroopChoice < ActiveRecord::Base
  validates_presence_of :name

  has_many :units
  has_many :squads
  has_many :squad_items

  def find_id(name)
    self.find_by_name(name)
  end
end
