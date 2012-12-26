class ClientprofilesController < ApplicationController
  # GET /clientprofiles
  # GET /clientprofiles.json

  before_filter :signed_in_user
  
  def index
    @clientprofiles = Clientprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientprofiles }
    end
  end

  # GET /clientprofiles/1
  # GET /clientprofiles/1.json
  def show
    @clientprofile = Clientprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clientprofile }
    end
  end

  # GET /clientprofiles/new
  # GET /clientprofiles/new.json
  def new
    @clientprofile = Clientprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clientprofile }
    end
  end

  # GET /clientprofiles/1/edit
  def edit
    @clientprofile = Clientprofile.find(params[:id])
  end

  # POST /clientprofiles
  # POST /clientprofiles.json
  def create
    @clientprofile = Clientprofile.new(params[:clientprofile])

    respond_to do |format|
      if @clientprofile.save
        format.html { redirect_to current_user, notice: 'Clientprofile was successfully created.' }
        format.json { render json: @clientprofile, status: :created, location: @clientprofile }
      else
        format.html { render action: "new" }
        format.json { render json: @clientprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clientprofiles/1
  # PUT /clientprofiles/1.json
  def update
    @clientprofile = Clientprofile.find(params[:id])

    respond_to do |format|
      if @clientprofile.update_attributes(params[:clientprofile])
        format.html { redirect_to current_user, notice: 'Clientprofile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clientprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientprofiles/1
  # DELETE /clientprofiles/1.json
  def destroy
    @clientprofile = Clientprofile.find(params[:id])
    @clientprofile.destroy

    respond_to do |format|
      format.html { redirect_to current_user }
      format.json { head :no_content }
    end
  end
end
