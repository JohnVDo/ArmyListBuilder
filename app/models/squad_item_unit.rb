class SquadItemUnit < ActiveRecord::Base
  belongs_to :squad_item
  belongs_to :unit

  validates_numericality_of :default, :min, :max
  validates_presence_of :squad_item_id
  validates_presence_of :unit_id
end
