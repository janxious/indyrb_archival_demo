class FoosController < ApplicationController
  # GET /foos
  # GET /foos.xml
  def index
    @foos = Foo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @foos }
    end
  end

  # GET /foos/1
  # GET /foos/1.xml
  def show
    @foo = Foo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @foo }
    end
  end

  # GET /foos/new
  # GET /foos/new.xml
  def new
    @foo = Foo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @foo }
    end
  end

  # GET /foos/1/edit
  def edit
    @foo = Foo.find(params[:id])
  end

  # POST /foos
  # POST /foos.xml
  def create
    @foo = Foo.new(params[:foo])

    respond_to do |format|
      if @foo.save
        flash[:notice] = 'Foo was successfully created.'
        format.html { redirect_to(@foo) }
        format.xml  { render :xml => @foo, :status => :created, :location => @foo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @foo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foos/1
  # PUT /foos/1.xml
  def update
    @foo = Foo.find(params[:id])

    respond_to do |format|
      if @foo.update_attributes(params[:foo])
        flash[:notice] = 'Foo was successfully updated.'
        format.html { redirect_to(@foo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @foo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foos/1
  # DELETE /foos/1.xml
  def destroy
    @foo = Foo.find(params[:id])
    @foo.destroy

    respond_to do |format|
      format.html { redirect_to(foos_url) }
      format.xml  { head :ok }
    end
  end
end
