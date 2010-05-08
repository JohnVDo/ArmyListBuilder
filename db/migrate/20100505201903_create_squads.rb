class CreateSquads < ActiveRecord::Migration
  def self.up
    create_table :squads do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :squads
  end
end
