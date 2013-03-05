class ApplicantresumesController < ApplicationController
  # GET /applicantresumes
  # GET /applicantresumes.json

  before_filter :admin_user, only: [ :index, :destroy ]
  def index
    @applicantresumes = Applicantresume.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applicantresumes }
    end
  end

  # GET /applicantresumes/1
  # GET /applicantresumes/1.json
  def show
    @applicantresume = Applicantresume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applicantresume }
    end
  end

  # GET /applicantresumes/new
  # GET /applicantresumes/new.json
  def new
    @applicantresume = Applicantresume.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applicantresume }
    end
  end

  # GET /applicantresumes/1/edit
  def edit
    @applicantresume = Applicantresume.find(params[:id])
  end

  # POST /applicantresumes
  # POST /applicantresumes.json
  def create
    @applicantresume = Applicantresume.new(params[:applicantresume])

    respond_to do |format|
      if @applicantresume.save
        flash[:success] = "Your application form was successfully sent to #{@applicantresume.user.name}. Expect that you may receive an email or text message from your employer anytime soon."
        format.html { redirect_to @applicantresume }
        format.json { render json: @applicantresume, status: :created, location: @applicantresume }
      else
        format.html { render action: "new" }
        format.json { render json: @applicantresume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applicantresumes/1
  # PUT /applicantresumes/1.json
  def update
    @applicantresume = Applicantresume.find(params[:id])

    respond_to do |format|
      if @applicantresume.update_attributes(params[:applicantresume])
        format.html { redirect_to @applicantresume, notice: 'Applicantresume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applicantresume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicantresumes/1
  # DELETE /applicantresumes/1.json
  def destroy
    @applicantresume = Applicantresume.find(params[:id])
    @applicantresume.destroy

    respond_to do |format|
      format.html { redirect_to current_user }
      format.json { head :no_content }
    end
  end
end
