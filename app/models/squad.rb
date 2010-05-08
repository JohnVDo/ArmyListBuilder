class Squad < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :squad_item_id
  validates_numericality_of :squad_item_id
  
  has_many :unit_items
  belongs_to :squad_item

  def total_point
    total_point = 0
    self.unit_items.each do |unit_item|
      total_point += (unit_item.count * unit_item.unit.point)
    end
    return total_point
  end

  def squad_item_units
    self.squad_item.squad_item_units
  end

  def troop_choice
    self.squad_item.troop_choice
  end

end
