class AddTroopChoiceToUnit < ActiveRecord::Migration
  def self.up
    add_column :units, :troop_choice_id, :integer
  end

  def self.down
    remove_column :units, :troop_choice_id
  end
end
