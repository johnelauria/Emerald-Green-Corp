class ApplicantsController < ApplicationController
  # GET /applicants
  # GET /applicants.json

  before_filter :signed_in_user, only: [:new, :create, :destroy]
  def index
    @applicants = Applicant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applicants }
    end
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
    @applicant = Applicant.find(params[:id])
    @applicantresume = Applicantresume.new(params[:applicantresume])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applicant }
    end
  end

  # GET /applicants/new
  # GET /applicants/new.json
  def new
    @applicant = Applicant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applicant }
    end
  end

  # GET /applicants/1/edit
  def edit
    @applicant = Applicant.find(params[:id])
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(params[:applicant])

    respond_to do |format|
      if @applicant.save
        flash[:success] = 'The information was successfully posted.'
        format.html { redirect_to current_user }
        format.json { render json: @applicant, status: :created, location: @applicant }
      else
        format.html { render action: "new" }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applicants/1
  # PUT /applicants/1.json
  def update
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      if @applicant.update_attributes(params[:applicant])
        format.html { redirect_to @applicant, notice: 'Applicant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy

    respond_to do |format|
      format.html { redirect_to current_user }
      format.json { head :no_content }
    end
  end

  private

    def correct_user
      @user = User.find(params[:id])
      if !current_user?(@user)
        flash[:warning] = "You are not authorized to access that page"
        redirect_to root_path
      end
    end
end
