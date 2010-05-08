class TroopChoicesController < ApplicationController
  # GET /troop_choices
  # GET /troop_choices.xml
  def index
    @troop_choices = TroopChoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @troop_choices }
    end
  end

  # GET /troop_choices/1
  # GET /troop_choices/1.xml
  def show
    @troop_choice = TroopChoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @troop_choice }
    end
  end

  # GET /troop_choices/new
  # GET /troop_choices/new.xml
  def new
    @troop_choice = TroopChoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @troop_choice }
    end
  end

  # GET /troop_choices/1/edit
  def edit
    @troop_choice = TroopChoice.find(params[:id])
  end

  # POST /troop_choices
  # POST /troop_choices.xml
  def create
    @troop_choice = TroopChoice.new(params[:troop_choice])

    respond_to do |format|
      if @troop_choice.save
        flash[:notice] = 'TroopChoice was successfully created.'
        format.html { redirect_to(@troop_choice) }
        format.xml  { render :xml => @troop_choice, :status => :created, :location => @troop_choice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @troop_choice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /troop_choices/1
  # PUT /troop_choices/1.xml
  def update
    @troop_choice = TroopChoice.find(params[:id])

    respond_to do |format|
      if @troop_choice.update_attributes(params[:troop_choice])
        flash[:notice] = 'TroopChoice was successfully updated.'
        format.html { redirect_to(@troop_choice) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @troop_choice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /troop_choices/1
  # DELETE /troop_choices/1.xml
  def destroy
    @troop_choice = TroopChoice.find(params[:id])
    @troop_choice.destroy

    respond_to do |format|
      format.html { redirect_to(troop_choices_url) }
      format.xml  { head :ok }
    end
  end
end
