class WomenController < ApplicationController
  def index
    @women = Woman.all

    respond_to do |format|
      format.html
      format.xml  { render :xml => @women }
    end
  end

  # GET /woman/1
  def show
    @woman = Woman.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @woman }
    end
  end

  # GET /woman/new
  def new
    @woman = Woman.new
    @mens = Woman.all

    respond_to do |format|
      format.html
      format.xml  { render :xml => @woman }
    end
  end

  # GET /woman/1/edit
  def edit
    @woman = Woman.find(params[:id])
    @mens = Woman.all
  end

  # POST /women
  def create
    @woman = Woman.new(params[:woman])

    respond_to do |format|
      if @woman.save
        format.html { redirect_to(@woman, :notice => 'Man was successfully created.') }
        format.xml  { render :xml => @woman, :status => :created, :location => @woman }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @woman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /woman/1
  def update
    @woman = Woman.find(params[:id])

    respond_to do |format|
      if @woman.update_attributes(params[:woman])
        format.html { redirect_to(@woman, :notice => 'Man was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @woman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /men/1
  # DELETE /men/1.xml
  def destroy
    @woman = Woman.find(params[:id])
    @woman.destroy

    respond_to do |format|
      format.html { redirect_to(men_url) }
      format.xml  { head :ok }
    end
  end
end
