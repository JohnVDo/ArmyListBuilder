class CreateArmyLists < ActiveRecord::Migration
  def self.up
    create_table :army_lists do |t|
      t.string :name
      t.string :player

      t.timestamps
    end
  end

  def self.down
    drop_table :army_lists
  end
end
