class SquadsController < ApplicationController
  # GET /squads
  # GET /squads.xml
  def index
    @squads = Squad.all

    # TODO better way to find by troop choice
    @squads_hq = Array.new
    @squads_elite = Array.new
    @squads_troop = Array.new
    @squads_fast = Array.new
    @squads_heavy = Array.new

    @squads.each do |squad|
      case squad.troop_choice.name
      when "HQ"
        @squads_hq << squad
      when "Elite"
        @squads_elite << squad
      when "Troop"
        @squads_troop << squad
      when "Fast"
        @squads_fast << squad
      when "Heavy"
        @squads_heavy << squad
      end
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @squads }
    end
  end

  # GET /squads/1
  # GET /squads/1.xml
  def show
    @squad = Squad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @squad }
    end
  end

  # GET /squads/new
  # GET /squads/new.xml
  def new
    @squad = Squad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @squad }
    end
  end

  def add_new_squad
    @squad = Squad.new
    squad_item = SquadItem.find(params[:squad_item])
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

    respond_to do |format|
      format.html { render :action => "edit" }
      format.xml { render :xml => @squad.errors, :status => :unprocessable_entity }
    end
  end

  # GET /squads/1/edit
  def edit
    @squad = Squad.find(params[:id])
  end

  # POST /squads
  # POST /squads.xml
  def create
    @squad = Squad.new(params[:squad])

    respond_to do |format|
      if @squad.save
        flash[:notice] = 'Squad was successfully created.'
        format.html { redirect_to squads_path }
        format.xml  { render :xml => @squad, :status => :created, :location => @squad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @squad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /squads/1
  # PUT /squads/1.xml
  def update
    @squad = Squad.find(params[:id])

    respond_to do |format|
      if @squad.update_attributes(params[:squad])
        flash[:notice] = 'Squad was successfully updated.'
        format.html { redirect_to squads_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @squad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /squads/1
  # DELETE /squads/1.xml
  def destroy
    @squad = Squad.find(params[:id])
    @squad.unit_items.collect {|u| u.destroy}
    @squad.destroy

 
    respond_to do |format|
      format.html { redirect_to(squads_url) }
      format.xml  { head :ok }
    end
  end

  def add_squad
    @troop_choices = TroopChoice.all
  end

  def modify
    @squad = Squad.find(params[:id])
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
    redirect_to :action => :modify, :id => params[:id]
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
    redirect_to :action => :modify, :id => params[:id]
  end

  private

end
