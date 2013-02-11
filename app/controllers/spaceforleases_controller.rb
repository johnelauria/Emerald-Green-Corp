class SpaceforleasesController < ApplicationController
  # GET /spaceforleases
  # GET /spaceforleases.json

  before_filter :admin_user, only: [ :create, :new, :edit, :update, :destroy ]

  def index
    @spaceforleases = Spaceforlease.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaceforleases }
    end
  end

  # GET /spaceforleases/1
  # GET /spaceforleases/1.json
  def show
    @spaceforlease = Spaceforlease.find(params[:id])
    @spaceforleases = Spaceforlease.all
    @spaceforleaseimage = Spaceforleaseimage.new(params[:spaceforleaseimage])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spaceforlease }
    end
  end

  # GET /spaceforleases/new
  # GET /spaceforleases/new.json
  def new
    @spaceforlease = Spaceforlease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spaceforlease }
    end
  end

  # GET /spaceforleases/1/edit
  def edit
    @spaceforlease = Spaceforlease.find(params[:id])
  end

  # POST /spaceforleases
  # POST /spaceforleases.json
  def create
    @spaceforlease = Spaceforlease.new(params[:spaceforlease])

    respond_to do |format|
      if @spaceforlease.save
        format.html { redirect_to @spaceforlease, notice: 'Spaceforlease was successfully created.' }
        format.json { render json: @spaceforlease, status: :created, location: @spaceforlease }
      else
        format.html { render action: "new" }
        format.json { render json: @spaceforlease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spaceforleases/1
  # PUT /spaceforleases/1.json
  def update
    @spaceforlease = Spaceforlease.find(params[:id])

    respond_to do |format|
      if @spaceforlease.update_attributes(params[:spaceforlease])
        format.html { redirect_to @spaceforlease, notice: 'Spaceforlease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spaceforlease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaceforleases/1
  # DELETE /spaceforleases/1.json
  def destroy
    @spaceforlease = Spaceforlease.find(params[:id])
    @spaceforlease.destroy

    respond_to do |format|
      format.html { redirect_to spaceforleases_url }
      format.json { head :no_content }
    end
  end
end
