class Unit < ActiveRecord::Base
  validates_numericality_of :point
  validates_presence_of :name, :troop_choice_id

  has_many :unit_items
  has_many :squad_item_units
  belongs_to :troop_choice
end
