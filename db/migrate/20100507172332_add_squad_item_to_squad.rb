class AddSquadItemToSquad < ActiveRecord::Migration
  def self.up
    add_column :squads, :squad_item_id, :integer
  end

  def self.down
     remove_column :squads, :squad_item_id
 end
end
