class SquadItemUnitsController < ApplicationController
  # GET /squad_item_units
  # GET /squad_item_units.xml
  def index
    @squad_item_units = SquadItemUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @squad_item_units }
    end
  end

  # GET /squad_item_units/1
  # GET /squad_item_units/1.xml
  def show
    @squad_item_unit = SquadItemUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @squad_item_unit }
    end
  end

  # GET /squad_item_units/new
  # GET /squad_item_units/new.xml
  def new
    @squad_item_unit = SquadItemUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @squad_item_unit }
    end
  end

  # GET /squad_item_units/1/edit
  def edit
    @squad_item_unit = SquadItemUnit.find(params[:id])
  end

  # POST /squad_item_units
  # POST /squad_item_units.xml
  def create
    @squad_item_unit = SquadItemUnit.new(params[:squad_item_unit])

    respond_to do |format|
      if @squad_item_unit.save
        flash[:notice] = 'SquadItemUnit was successfully created.'
        format.html { redirect_to(@squad_item_unit) }
        format.xml  { render :xml => @squad_item_unit, :status => :created, :location => @squad_item_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @squad_item_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /squad_item_units/1
  # PUT /squad_item_units/1.xml
  def update
    @squad_item_unit = SquadItemUnit.find(params[:id])

    respond_to do |format|
      if @squad_item_unit.update_attributes(params[:squad_item_unit])
        flash[:notice] = 'SquadItemUnit was successfully updated.'
        format.html { redirect_to(@squad_item_unit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @squad_item_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /squad_item_units/1
  # DELETE /squad_item_units/1.xml
  def destroy
    @squad_item_unit = SquadItemUnit.find(params[:id])
    @squad_item_unit.destroy

    respond_to do |format|
      format.html { redirect_to(squad_item_units_url) }
      format.xml  { head :ok }
    end
  end
end
