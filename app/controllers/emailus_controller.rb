class EmailusController < ApplicationController
  # GET /emailus
  # GET /emailus.json

  before_filter :admin_user

  def index
    @emailus = Emailu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emailus }
    end
  end

  # GET /emailus/1
  # GET /emailus/1.json
  def show
    @emailu = Emailu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emailu }
    end
  end

  # GET /emailus/new
  # GET /emailus/new.json
  def new
    @emailu = Emailu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emailu }
    end
  end

  # GET /emailus/1/edit
  def edit
    @emailu = Emailu.find(params[:id])
  end

  # POST /emailus
  # POST /emailus.json
  def create
    @emailu = Emailu.new(params[:emailu])

    respond_to do |format|
      if @emailu.save
        Messenger.mailer(@emailu).deliver
        flash[:success] = 'Your message was successfully sent. We will repsond to your message as soon as possible'
        format.html { redirect_to @emailu }
        format.json { render json: @emailu, status: :created, location: @emailu }
      else
        format.html { render action: "new" }
        format.json { render json: @emailu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emailus/1
  # PUT /emailus/1.json
  def update
    @emailu = Emailu.find(params[:id])

    respond_to do |format|
      if @emailu.update_attributes(params[:emailu])
        format.html { redirect_to @emailu, notice: 'Emailu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emailu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emailus/1
  # DELETE /emailus/1.json
  def destroy
    @emailu = Emailu.find(params[:id])
    @emailu.destroy

    respond_to do |format|
      format.html { redirect_to emailus_url }
      format.json { head :no_content }
    end
  end
end
