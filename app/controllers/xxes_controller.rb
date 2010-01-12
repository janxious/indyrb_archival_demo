class XxesController < ApplicationController
  # GET /xxes
  # GET /xxes.xml
  def index
    @xxes = Xx.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @xxes }
    end
  end

  # GET /xxes/1
  # GET /xxes/1.xml
  def show
    @xx = Xx.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @xx }
    end
  end

  # GET /xxes/new
  # GET /xxes/new.xml
  def new
    @xx = Xx.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @xx }
    end
  end

  # GET /xxes/1/edit
  def edit
    @xx = Xx.find(params[:id])
  end

  # POST /xxes
  # POST /xxes.xml
  def create
    @xx = Xx.new(params[:xx])

    respond_to do |format|
      if @xx.save
        flash[:notice] = 'Xx was successfully created.'
        format.html { redirect_to(@xx) }
        format.xml  { render :xml => @xx, :status => :created, :location => @xx }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @xx.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /xxes/1
  # PUT /xxes/1.xml
  def update
    @xx = Xx.find(params[:id])

    respond_to do |format|
      if @xx.update_attributes(params[:xx])
        flash[:notice] = 'Xx was successfully updated.'
        format.html { redirect_to(@xx) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @xx.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /xxes/1
  # DELETE /xxes/1.xml
  def destroy
    @xx = Xx.find(params[:id])
    @xx.destroy

    respond_to do |format|
      format.html { redirect_to(xxes_url) }
      format.xml  { head :ok }
    end
  end
end
