class AddTroopChoiceToSquad < ActiveRecord::Migration
  def self.up
    add_column :squads, :troop_choice_id, :integer
  end

  def self.down
    remove_column :squads, :troop_choice_id
  end
end
