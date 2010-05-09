class BuilderController < ApplicationController
  def index
    @army_lists = ArmyList.all
  end

  def edit
    @army_list = ArmyList.find(params[:id])
    @squads = self.squad_sort_by_troop_choices(@army_list.squads)
  end

  def add_squad
    @troop_choices = TroopChoice.all
    @army_list = ArmyList.find(params[:id])
  end

  def add_new_squad
    @army_list = ArmyList.find(params[:id])
    squad_item = SquadItem.find(params[:squad_item])

    @squad = Squad.new
    @squad.army_list_id = @army_list.id
    @squad.squad_item_id = squad_item.id
    @squad.name = squad_item.name
    @squad.save!

    # add unit_items based on squad item
    squad_item.squad_item_units.each do |squad_item_unit|
      unit_item = UnitItem.new
      unit_item.squad = @squad
      unit_item.unit = squad_item_unit.unit
      unit_item.count = squad_item_unit.default
      unit_item.save!
    end

    redirect_to :action => :edit, :id => @army_list
  end

  def modify
    @army_list = ArmyList.find(params[:id])
    @squad = Squad.find(params[:squad])
  end

  def add
    unit_item = UnitItem.find(params[:unit_item])
    if unit_item.count.nil?
      unit_item.count = 1
    elsif unit_item.count >= unit_item.max
      flash[:notice] = "Can not go above max #{unit_item.max}"
    else
      unit_item.count += 1
    end
    unit_item.save!
    redirect_to :action => :modify, :id => params[:id], :squad => params[:squad]
  end

  def substract
    unit_item = UnitItem.find(params[:unit_item])
    if unit_item.count.nil?
      unit_item.count = 0
    elsif unit_item.count <= unit_item.min
      flash[:notice] = "Can not go below min #{unit_item.min}"
    else
      unit_item.count -= 1
    end
    unit_item.save!
    redirect_to :action => :modify, :id => params[:id], :squad => params[:squad]
  end

  protected

  def squad_sort_by_troop_choices(squads)
    # TODO better way to find by troop choice
    squads_sorted = Array.new
    squads_hq = Array.new
    squads_elite = Array.new
    squads_troop = Array.new
    squads_fast = Array.new
    squads_heavy = Array.new

    squads.each do |squad|
      case squad.troop_choice.name
      when "HQ"
        squads_hq << squad
      when "Elite"
        squads_elite << squad
      when "Troop"
        squads_troop << squad
      when "Fast"
        squads_fast << squad
      when "Heavy"
        squads_heavy << squad
      end
    end
    squads_sorted = squads_hq + squads_elite + squads_troop + squads_fast + squads_heavy
    return squads_sorted
  end
end
