class RemoveTroopChoiceFromSquad < ActiveRecord::Migration
  def self.up
    remove_column :squads, :troop_choice_id
  end

  def self.down
    add_column :squads, :troop_choice_id, :integer
  end
end
