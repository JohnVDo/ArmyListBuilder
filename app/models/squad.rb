class Squad < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :squad_item_id
  validates_numericality_of :squad_item_id
  validates_presence_of :army_list_id
  validates_numericality_of :army_list_id
  
  has_many :unit_items
  belongs_to :squad_item
  belongs_to :army_list

  def point
    point = 0
    self.unit_items.each do |unit_item|
      point += (unit_item.count * unit_item.unit.point)
    end
    return point
  end

  def squad_item_units
    self.squad_item.squad_item_units
  end

  def troop_choice
    self.squad_item.troop_choice
  end

end
