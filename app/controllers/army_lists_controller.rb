class ArmyListsController < ApplicationController
  # GET /army_lists
  # GET /army_lists.xml
  def index
    @army_lists = ArmyList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @army_lists }
    end
  end

  # GET /army_lists/1
  # GET /army_lists/1.xml
  def show
    @army_list = ArmyList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @army_list }
    end
  end

  # GET /army_lists/new
  # GET /army_lists/new.xml
  def new
    @army_list = ArmyList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @army_list }
    end
  end

  # GET /army_lists/1/edit
  def edit
    @army_list = ArmyList.find(params[:id])
  end

  # POST /army_lists
  # POST /army_lists.xml
  def create
    @army_list = ArmyList.new(params[:army_list])

    respond_to do |format|
      if @army_list.save
        flash[:notice] = 'ArmyList was successfully created.'
        format.html { redirect_to :controller => :builder }
        format.xml  { render :xml => @army_list, :status => :created, :location => @army_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @army_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /army_lists/1
  # PUT /army_lists/1.xml
  def update
    @army_list = ArmyList.find(params[:id])

    respond_to do |format|
      if @army_list.update_attributes(params[:army_list])
        flash[:notice] = 'ArmyList was successfully updated.'
        format.html { redirect_to :controller => :builder }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @army_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /army_lists/1
  # DELETE /army_lists/1.xml
  def destroy
    @army_list = ArmyList.find(params[:id])
    @army_list.destroy

    respond_to do |format|
      format.html { redirect_to :controller => :builder }
      format.xml  { head :ok }
    end
  end
end
