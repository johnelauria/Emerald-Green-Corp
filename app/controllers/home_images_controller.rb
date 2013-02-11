class HomeImagesController < ApplicationController
  # GET /home_images
  # GET /home_images.json

  before_filter :signed_in_user
  before_filter :admin_user
  def index
    @home_images = HomeImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @home_images }
    end
  end

  # GET /home_images/1
  # GET /home_images/1.json
  def show
    @home_image = HomeImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @home_image }
    end
  end

  # GET /home_images/new
  # GET /home_images/new.json
  def new
    @home_image = HomeImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @home_image }
    end
  end

  # GET /home_images/1/edit
  def edit
    @home_image = HomeImage.find(params[:id])
  end

  # POST /home_images
  # POST /home_images.json
  def create
    @home_image = HomeImage.new(params[:home_image])

    respond_to do |format|
      if @home_image.save
        format.html { redirect_to @home_image, notice: 'Home image was successfully created.' }
        format.json { render json: @home_image, status: :created, location: @home_image }
      else
        format.html { render action: "new" }
        format.json { render json: @home_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home_images/1
  # PUT /home_images/1.json
  def update
    @home_image = HomeImage.find(params[:id])

    respond_to do |format|
      if @home_image.update_attributes(params[:home_image])
        format.html { redirect_to @home_image, notice: 'Home image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @home_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_images/1
  # DELETE /home_images/1.json
  def destroy
    @home_image = HomeImage.find(params[:id])
    @home_image.destroy

    respond_to do |format|
      format.html { redirect_to home_images_url }
      format.json { head :no_content }
    end
  end
end
