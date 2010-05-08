# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

TroopChoice.create [
  {:name => "HQ"},
  {:name => "Elite"},
  {:name => "Troop"},
  {:name => "Fast"},
  {:name => "Heavy"},
]

troop_choice_hq = TroopChoice.find_by_name("HQ")
troop_choice_elite = TroopChoice.find_by_name("Elite")
troop_choice_troop = TroopChoice.find_by_name("Troop")
troop_choice_fast = TroopChoice.find_by_name("Fast")
troop_choice_heavy = TroopChoice.find_by_name("Heavy")

Unit.create [
  {:troop_choice_id => troop_choice_hq.id, :name => "Commander Dante", :point => 225},
  {:troop_choice_id => troop_choice_hq.id, :name => "Chapter Master Gabriel Seth", :point => 160},
  {:troop_choice_id => troop_choice_hq.id, :name => "Astorath the Grim", :point => 220},
  {:troop_choice_id => troop_choice_hq.id, :name => "Sanguinor, Exemplar of the Host", :point => 275},
  {:troop_choice_id => troop_choice_hq.id, :name => "Mephiston, Lord of Death", :point => 250},
  {:troop_choice_id => troop_choice_hq.id, :name => "Captain Tycho", :point => 175},
  {:troop_choice_id => troop_choice_hq.id, :name => "Librarian", :point => 100},
  {:troop_choice_id => troop_choice_hq.id, :name => "Reclusiarch", :point => 130},
  {:troop_choice_id => troop_choice_hq.id, :name => "Captain", :point => 100},
  {:troop_choice_id => troop_choice_hq.id, :name => "Honor Guard", :point => 20},
  {:troop_choice_id => troop_choice_hq.id, :name => "Blood Champion", :point => 35},
  {:troop_choice_id => troop_choice_hq.id, :name => "Sanguinary Novitiate", :point => 35},
] unless troop_choice_hq.nil?

Unit.create [
  {:troop_choice_id => troop_choice_elite.id, :name => "Chaplain", :point => 100},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sanguinary Guard", :point => 40},
  {:troop_choice_id => troop_choice_elite.id, :name => "Furioso Dreadnought", :point => 125},
  {:troop_choice_id => troop_choice_elite.id, :name => "Furioso Dreadnought Librarian", :point => 175},
  {:troop_choice_id => troop_choice_elite.id, :name => "Terminator", :point => 40},
  {:troop_choice_id => troop_choice_elite.id, :name => "Terminator Sergeant", :point => 40},
  {:troop_choice_id => troop_choice_elite.id, :name => "Assault Terminator", :point => 40},
  {:troop_choice_id => troop_choice_elite.id, :name => "Techmarine", :point => 100},
  {:troop_choice_id => troop_choice_elite.id, :name => "Servitor", :point => 15},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sternguard Veteran Marine", :point => 25},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sternguard Veteran Marine Sergeant", :point => 25},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sanguiary Priest", :point => 50},
] unless troop_choice_elite.nil?

Unit.create [
  {:troop_choice_id => troop_choice_troop.id, :name => "Space Marine", :point => 16},
  {:troop_choice_id => troop_choice_troop.id, :name => "Space Marine Sergeant", :point => 26},
  {:troop_choice_id => troop_choice_troop.id, :name => "Death Company", :point => 20},
  {:troop_choice_id => troop_choice_troop.id, :name => "Lemartes", :point => 150},
  {:troop_choice_id => troop_choice_troop.id, :name => "Death Company Dreadnought", :point => 125},
  {:troop_choice_id => troop_choice_troop.id, :name => "Space Marine Scout", :point => 14},
  {:troop_choice_id => troop_choice_troop.id, :name => "Space Marine Scout Sergeant", :point => 19},
  {:troop_choice_id => troop_choice_troop.id, :name => "Assault Marine", :point => 18},
  {:troop_choice_id => troop_choice_troop.id, :name => "Assault Marine Sergeant", :point => 28},
] unless troop_choice_troop.nil?

Unit.create [
  {:troop_choice_id => troop_choice_fast.id, :name => "Vanguard Veteran Marine", :point => 20},
  {:troop_choice_id => troop_choice_fast.id, :name => "Vanguard Veteran Marine Sergeant", :point => 35},
  {:troop_choice_id => troop_choice_fast.id, :name => "Land Speeder", :point => 50},
  {:troop_choice_id => troop_choice_fast.id, :name => "Baal Predator", :point => 115},
  {:troop_choice_id => troop_choice_fast.id, :name => "Attack Bike", :point => 40},
  {:troop_choice_id => troop_choice_fast.id, :name => "Bike", :point => 25},
  {:troop_choice_id => troop_choice_fast.id, :name => "Bike Sergeant", :point => 40},
  {:troop_choice_id => troop_choice_fast.id, :name => "Scout Bike", :point => 20},
  {:troop_choice_id => troop_choice_fast.id, :name => "Scout Bike Sergeant", :point => 35},
] unless troop_choice_fast.nil?

Unit.create [
  {:troop_choice_id => troop_choice_heavy.id, :name => "Dreadnought", :point => 105},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Stormraven", :point => 200},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Predator", :point => 70},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Devastator Marine", :point => 16},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Devastator Marine Sergeant", :point => 26},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Vindcator", :point => 145},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Whirlwind", :point => 90},
] unless troop_choice_heavy.nil?

SquadItem.create [
  {:troop_choice_id => troop_choice_hq.id, :name => "Commander Dante"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Chapter Master Gabriel Seth"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Astorath the Grim"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Sanguinor, Exemplar of the Host"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Mephiston, Lord of Death"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Captain Tycho"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Librarian"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Reclusiarch"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Captain"},
  {:troop_choice_id => troop_choice_hq.id, :name => "Honor Guard"},
] unless troop_choice_hq.nil?

SquadItem.create [
  {:troop_choice_id => troop_choice_elite.id, :name => "Chaplain"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sanguinary Guard"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Furioso Dreadnought"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Furioso Dreadnought Librarian"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Terminator Squad"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Terminator Assault Squad"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Techmarine"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sternguard Veteran Squad"},
  {:troop_choice_id => troop_choice_elite.id, :name => "Sanguiary Priest"},
] unless troop_choice_elite.nil?

SquadItem.create [
  {:troop_choice_id => troop_choice_troop.id, :name => "Tactical Squad"},
  {:troop_choice_id => troop_choice_troop.id, :name => "Death Company"},
  {:troop_choice_id => troop_choice_troop.id, :name => "Death Company Dreadnought"},
  {:troop_choice_id => troop_choice_troop.id, :name => "Scout Squad"},
  {:troop_choice_id => troop_choice_troop.id, :name => "Assault Squad"},
] unless troop_choice_troop.nil?

SquadItem.create [
  {:troop_choice_id => troop_choice_fast.id, :name => "Vanguard Veteran Squad"},
  {:troop_choice_id => troop_choice_fast.id, :name => "Land Speeder Squadron"},
  {:troop_choice_id => troop_choice_fast.id, :name => "Baal Predator"},
  {:troop_choice_id => troop_choice_fast.id, :name => "Attack Bike"},
  {:troop_choice_id => troop_choice_fast.id, :name => "Bike Squad"},
  {:troop_choice_id => troop_choice_fast.id, :name => "Scout Bike Squad"},
] unless troop_choice_fast.nil?

SquadItem.create [
  {:troop_choice_id => troop_choice_heavy.id, :name => "Dreadnought"},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Stormraven"},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Predator"},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Devastator Squad"},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Vindcator"},
  {:troop_choice_id => troop_choice_heavy.id, :name => "Whirlwind"},
] unless troop_choice_heavy.nil?

SquadItemUnit.create [
  {:squad_item_id => SquadItem.find_by_name("Commander Dante").id,
   :unit_id => Unit.find_by_name("Commander Dante").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Chapter Master Gabriel Seth").id,
   :unit_id => Unit.find_by_name("Chapter Master Gabriel Seth").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Astorath the Grim").id,
   :unit_id => Unit.find_by_name("Astorath the Grim").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Sanguinor, Exemplar of the Host").id,
   :unit_id => Unit.find_by_name("Sanguinor, Exemplar of the Host").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Mephiston, Lord of Death").id,
   :unit_id => Unit.find_by_name("Mephiston, Lord of Death").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Captain Tycho").id,
   :unit_id => Unit.find_by_name("Captain Tycho").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Librarian").id,
   :unit_id => Unit.find_by_name("Librarian").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Reclusiarch").id,
   :unit_id => Unit.find_by_name("Reclusiarch").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Captain").id,
   :unit_id => Unit.find_by_name("Captain").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Honor Guard").id,
   :unit_id => Unit.find_by_name("Honor Guard").id,
   :default => 4, :min => 4, :max => 4},
  {:squad_item_id => SquadItem.find_by_name("Honor Guard").id,
   :unit_id => Unit.find_by_name("Blood Champion").id,
   :default => 0, :min => 0, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Honor Guard").id,
   :unit_id => Unit.find_by_name("Sanguinary Novitiate").id,
   :default => 1, :min => 1, :max => 1},
]


SquadItemUnit.create [
  {:squad_item_id => SquadItem.find_by_name("Chaplain").id,
   :unit_id => Unit.find_by_name("Chaplain").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Sanguinary Guard").id,
   :unit_id => Unit.find_by_name("Sanguinary Guard").id,
   :default => 5, :min => 5, :max => 5},
  {:squad_item_id => SquadItem.find_by_name("Furioso Dreadnought").id,
   :unit_id => Unit.find_by_name("Furioso Dreadnought").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Furioso Dreadnought Librarian").id,
   :unit_id => Unit.find_by_name("Furioso Dreadnought Librarian").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Terminator Squad").id,
   :unit_id => Unit.find_by_name("Terminator").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Terminator Squad").id,
   :unit_id => Unit.find_by_name("Terminator Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Terminator Assault Squad").id,
   :unit_id => Unit.find_by_name("Assault Terminator").id,
   :default => 5, :min => 5, :max => 10},
  {:squad_item_id => SquadItem.find_by_name("Techmarine").id,
   :unit_id => Unit.find_by_name("Techmarine").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Techmarine").id,
   :unit_id => Unit.find_by_name("Servitor").id,
   :default => 0, :min => 5, :max => 5},
  {:squad_item_id => SquadItem.find_by_name("Sternguard Veteran Squad").id,
   :unit_id => Unit.find_by_name("Sternguard Veteran Marine").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Sternguard Veteran Squad").id,
   :unit_id => Unit.find_by_name("Sternguard Veteran Marine Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Sanguiary Priest").id,
   :unit_id => Unit.find_by_name("Sanguiary Priest").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Sanguiary Priest").id,
   :unit_id => Unit.find_by_name("Sanguiary Priest").id,
   :default => 0, :min => 0, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Sanguiary Priest").id,
   :unit_id => Unit.find_by_name("Sanguiary Priest").id,
   :default => 0, :min => 0, :max => 1},
]

SquadItemUnit.create [
  {:squad_item_id => SquadItem.find_by_name("Tactical Squad").id,
   :unit_id => Unit.find_by_name("Space Marine").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Tactical Squad").id,
   :unit_id => Unit.find_by_name("Space Marine Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Death Company").id,
   :unit_id => Unit.find_by_name("Death Company").id,
   :default => 3, :min => 3, :max => 30},
  {:squad_item_id => SquadItem.find_by_name("Death Company").id,
   :unit_id => Unit.find_by_name("Lemartes").id,
   :default => 0, :min => 0, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Death Company Dreadnought").id,
   :unit_id => Unit.find_by_name("Death Company Dreadnought").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Scout Squad").id,
   :unit_id => Unit.find_by_name("Space Marine Scout").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Scout Squad").id,
   :unit_id => Unit.find_by_name("Space Marine Scout Sergeant").id,
   :default => 1, :min => 1, :max => 1},
]

SquadItemUnit.create [
  {:squad_item_id => SquadItem.find_by_name("Assault Squad").id,
   :unit_id => Unit.find_by_name("Assault Marine").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Assault Squad").id,
   :unit_id => Unit.find_by_name("Assault Marine Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Vanguard Veteran Squad").id,
   :unit_id => Unit.find_by_name("Vanguard Veteran Marine").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Vanguard Veteran Squad").id,
   :unit_id => Unit.find_by_name("Vanguard Veteran Marine Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Land Speeder Squadron").id,
   :unit_id => Unit.find_by_name("Land Speeder").id,
   :default => 1, :min => 1, :max => 3},
  {:squad_item_id => SquadItem.find_by_name("Baal Predator").id,
   :unit_id => Unit.find_by_name("Baal Predator").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Attack Bike").id,
   :unit_id => Unit.find_by_name("Attack Bike").id,
   :default => 1, :min => 1, :max => 3},
  {:squad_item_id => SquadItem.find_by_name("Bike Squad").id,
   :unit_id => Unit.find_by_name("Bike").id,
   :default => 2, :min => 2, :max => 7},
  {:squad_item_id => SquadItem.find_by_name("Bike Squad").id,
   :unit_id => Unit.find_by_name("Bike Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Bike Squad").id,
   :unit_id => Unit.find_by_name("Attack Bike").id,
   :default => 0, :min => 0, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Scout Bike Squad").id,
   :unit_id => Unit.find_by_name("Scout Bike").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Scout Bike Squad").id,
   :unit_id => Unit.find_by_name("Scout Bike Sergeant").id,
   :default => 1, :min => 1, :max => 1},
]

SquadItemUnit.create [
  {:squad_item_id => SquadItem.find_by_name("Dreadnought").id,
   :unit_id => Unit.find_by_name("Dreadnought").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Stormraven").id,
   :unit_id => Unit.find_by_name("Stormraven").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Predator").id,
   :unit_id => Unit.find_by_name("Predator").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Devastator Squad").id,
   :unit_id => Unit.find_by_name("Devastator Marine").id,
   :default => 4, :min => 4, :max => 9},
  {:squad_item_id => SquadItem.find_by_name("Devastator Squad").id,
   :unit_id => Unit.find_by_name("Devastator Marine Sergeant").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Vindcator").id,
   :unit_id => Unit.find_by_name("Vindcator").id,
   :default => 1, :min => 1, :max => 1},
  {:squad_item_id => SquadItem.find_by_name("Whirlwind").id,
   :unit_id => Unit.find_by_name("Whirlwind").id,
   :default => 1, :min => 1, :max => 1},
]

