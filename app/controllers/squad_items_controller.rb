class SquadItemsController < ApplicationController
  # GET /squad_items
  # GET /squad_items.xml
  def index
    @squad_items = SquadItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @squad_items }
    end
  end

  # GET /squad_items/1
  # GET /squad_items/1.xml
  def show
    @squad_item = SquadItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @squad_item }
    end
  end

  # GET /squad_items/new
  # GET /squad_items/new.xml
  def new
    @squad_item = SquadItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @squad_item }
    end
  end

  # GET /squad_items/1/edit
  def edit
    @squad_item = SquadItem.find(params[:id])
  end

  # POST /squad_items
  # POST /squad_items.xml
  def create
    @squad_item = SquadItem.new(params[:squad_item])

    respond_to do |format|
      if @squad_item.save
        flash[:notice] = 'SquadItem was successfully created.'
        format.html { redirect_to squad_items_url }
        format.xml  { render :xml => @squad_item, :status => :created, :location => @squad_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @squad_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /squad_items/1
  # PUT /squad_items/1.xml
  def update
    @squad_item = SquadItem.find(params[:id])

    respond_to do |format|
      if @squad_item.update_attributes(params[:squad_item])
        flash[:notice] = 'SquadItem was successfully updated.'
        format.html { redirect_to squad_items_url }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @squad_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /squad_items/1
  # DELETE /squad_items/1.xml
  def destroy
    @squad_item = SquadItem.find(params[:id])
    @squad_item.destroy

    respond_to do |format|
      format.html { redirect_to(squad_items_url) }
      format.xml  { head :ok }
    end
  end
end
