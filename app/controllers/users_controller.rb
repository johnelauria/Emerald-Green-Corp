class UsersController < ApplicationController
  # GET /users
  # GET /users.json

  before_filter :signed_in_user, only: [ :index, :destroy ]
  before_filter :admin_user, only: [ :new, :create, :edit, :update, :destroy ]

  def changeadmin
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    redirect_to users_path
  end

  def index
    @users = User.all.sort { |a, b| a.name.downcase <=> b.name.downcase }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @image = Image.new(params[:image])
    @applicant = Applicant.new(params[:applicant])
    @clientprofiles = Clientprofile.all
    @clientprofile = Clientprofile.new(params[:clientprofile])
    @product = Product.new(params[:product])
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        unless @user.email.nil?
          Contact.create(user_id: @user.id, contact_type: "Email", contact: @user.email)
        end
        unless @user.telephone.nil?
          Contact.create(user_id: @user.id, contact_type: "Telephone", contact: @user.telephone)
        end
        flash[:success] = "A new user account has been successfully created"
        format.html { redirect_to @user }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
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
