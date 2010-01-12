class YysController < ApplicationController
  # GET /yys
  # GET /yys.xml
  def index
    @yys = Yy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @yys }
    end
  end

  # GET /yys/1
  # GET /yys/1.xml
  def show
    @yy = Yy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @yy }
    end
  end

  # GET /yys/new
  # GET /yys/new.xml
  def new
    @yy = Yy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @yy }
    end
  end

  # GET /yys/1/edit
  def edit
    @yy = Yy.find(params[:id])
  end

  # POST /yys
  # POST /yys.xml
  def create
    @yy = Yy.new(params[:yy])

    respond_to do |format|
      if @yy.save
        flash[:notice] = 'Yy was successfully created.'
        format.html { redirect_to(@yy) }
        format.xml  { render :xml => @yy, :status => :created, :location => @yy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @yy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /yys/1
  # PUT /yys/1.xml
  def update
    @yy = Yy.find(params[:id])

    respond_to do |format|
      if @yy.update_attributes(params[:yy])
        flash[:notice] = 'Yy was successfully updated.'
        format.html { redirect_to(@yy) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @yy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /yys/1
  # DELETE /yys/1.xml
  def destroy
    @yy = Yy.find(params[:id])
    @yy.destroy

    respond_to do |format|
      format.html { redirect_to(yys_url) }
      format.xml  { head :ok }
    end
  end
end
