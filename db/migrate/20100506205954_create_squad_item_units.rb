class CreateSquadItemUnits < ActiveRecord::Migration
  def self.up
    create_table :squad_item_units do |t|
      t.references :squad_item
      t.references :unit
      t.integer :default
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end

  def self.down
    drop_table :squad_item_units
  end
end
