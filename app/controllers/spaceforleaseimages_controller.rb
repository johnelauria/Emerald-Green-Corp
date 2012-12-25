class SpaceforleaseimagesController < ApplicationController
  # GET /spaceforleaseimages
  # GET /spaceforleaseimages.json

  before_filter :admin_user, only: [ :create, :new, :edit, :update ]
  
  def index
    @spaceforleaseimages = Spaceforleaseimage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaceforleaseimages }
    end
  end

  # GET /spaceforleaseimages/1
  # GET /spaceforleaseimages/1.json
  def show
    @spaceforleaseimage = Spaceforleaseimage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spaceforleaseimage }
    end
  end

  # GET /spaceforleaseimages/new
  # GET /spaceforleaseimages/new.json
  def new
    @spaceforleaseimage = Spaceforleaseimage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spaceforleaseimage }
    end
  end

  # GET /spaceforleaseimages/1/edit
  def edit
    @spaceforleaseimage = Spaceforleaseimage.find(params[:id])
  end

  # POST /spaceforleaseimages
  # POST /spaceforleaseimages.json
  def create
    @spaceforleaseimage = Spaceforleaseimage.new(params[:spaceforleaseimage])

    respond_to do |format|
      if @spaceforleaseimage.save
        flash[:success] = "Image was successfully uploaded"
        format.html { redirect_to spaceforleases_path }
        format.json { render json: @spaceforleaseimage, status: :created, location: @spaceforleaseimage }
      else
        format.html { render action: "new" }
        format.json { render json: @spaceforleaseimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spaceforleaseimages/1
  # PUT /spaceforleaseimages/1.json
  def update
    @spaceforleaseimage = Spaceforleaseimage.find(params[:id])

    respond_to do |format|
      if @spaceforleaseimage.update_attributes(params[:spaceforleaseimage])
        format.html { redirect_to @spaceforleaseimage, notice: 'Spaceforleaseimage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spaceforleaseimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaceforleaseimages/1
  # DELETE /spaceforleaseimages/1.json
  def destroy
    @spaceforleaseimage = Spaceforleaseimage.find(params[:id])
    @spaceforleaseimage.destroy

    respond_to do |format|
      format.html { redirect_to spaceforleaseimages_url }
      format.json { head :no_content }
    end
  end
end
