class CreateUnitItems < ActiveRecord::Migration
  def self.up
    create_table :unit_items do |t|
      t.references :unit
      t.references :squad
      t.integer :count

      t.timestamps
    end
  end

  def self.down
    drop_table :unit_items
  end
end
