class WebprofilesController < ApplicationController
  # GET /webprofiles
  # GET /webprofiles.json

  before_filter :admin_user
  
  def index
    @webprofiles = Webprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @webprofiles }
    end
  end

  # GET /webprofiles/1
  # GET /webprofiles/1.json
  def show
    @webprofile = Webprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @webprofile }
    end
  end

  # GET /webprofiles/new
  # GET /webprofiles/new.json
  def new
    @webprofile = Webprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @webprofile }
    end
  end

  # GET /webprofiles/1/edit
  def edit
    @webprofile = Webprofile.find(params[:id])
  end

  # POST /webprofiles
  # POST /webprofiles.json
  def create
    @webprofile = Webprofile.new(params[:webprofile])

    respond_to do |format|
      if @webprofile.save
        format.html { redirect_to @webprofile, notice: 'Webprofile was successfully created.' }
        format.json { render json: @webprofile, status: :created, location: @webprofile }
      else
        format.html { render action: "new" }
        format.json { render json: @webprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /webprofiles/1
  # PUT /webprofiles/1.json
  def update
    @webprofile = Webprofile.find(params[:id])

    respond_to do |format|
      if @webprofile.update_attributes(params[:webprofile])
        format.html { redirect_to @webprofile, notice: 'Webprofile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @webprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webprofiles/1
  # DELETE /webprofiles/1.json
  def destroy
    @webprofile = Webprofile.find(params[:id])
    @webprofile.destroy

    respond_to do |format|
      format.html { redirect_to webprofiles_url }
      format.json { head :no_content }
    end
  end
end
