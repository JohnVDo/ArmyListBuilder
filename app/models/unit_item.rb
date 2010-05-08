class UnitItem < ActiveRecord::Base
  belongs_to :unit
  belongs_to :squad

  validates_numericality_of :count

  def min
    min = self.squad.squad_item_units.find_by_unit_id(self.unit.id).min
  end

  def max
    max = self.squad.squad_item_units.find_by_unit_id(self.unit.id).max
  end
end
