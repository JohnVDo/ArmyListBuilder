class SquadItem < ActiveRecord::Base
  validates_presence_of :name, :troop_choice_id
  validates_numericality_of :troop_choice_id

  belongs_to :troop_choice
  has_many :squad_item_units
  belongs_to :army_list
end
