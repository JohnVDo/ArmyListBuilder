class CreateTroopChoices < ActiveRecord::Migration
  def self.up
    create_table :troop_choices do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :troop_choices
  end
end
