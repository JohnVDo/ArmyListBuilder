class CreateSquadItems < ActiveRecord::Migration
  def self.up
    create_table :squad_items do |t|
      t.string :name
      t.references :troop_choice

      t.timestamps
    end
  end

  def self.down
    drop_table :squad_items
  end
end
