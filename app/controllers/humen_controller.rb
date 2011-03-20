class HumenController < ApplicationController
  # GET /humen
  # GET /humen.xml
  def index
    @humen = Human.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @humen }
    end
  end

  # GET /humen/1
  # GET /humen/1.xml
  def show
    @human = Human.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @human }
    end
  end

  # GET /humen/new
  # GET /humen/new.xml
  def new
    @human = Human.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @human }
    end
  end

  # GET /humen/1/edit
  def edit
    @human = Human.find(params[:id])
  end

  # POST /humen
  # POST /humen.xml
  def create
    @human = Human.new(params[:human])

    respond_to do |format|
      if @human.save
        format.html { redirect_to(@human, :notice => 'Human was successfully created.') }
        format.xml  { render :xml => @human, :status => :created, :location => @human }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @human.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /humen/1
  # PUT /humen/1.xml
  def update
    @human = Human.find(params[:id])

    respond_to do |format|
      if @human.update_attributes(params[:human])
        format.html { redirect_to(@human, :notice => 'Human was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @human.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /humen/1
  # DELETE /humen/1.xml
  def destroy
    @human = Human.find(params[:id])
    @human.destroy

    respond_to do |format|
      format.html { redirect_to(humen_url) }
      format.xml  { head :ok }
    end
  end
end
