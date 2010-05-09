class AddSquadToArmyList < ActiveRecord::Migration
  def self.up
    add_column :squads, :army_list_id, :integer
  end

  def self.down
    remove_column :squads, :army_list_id
  end
end
