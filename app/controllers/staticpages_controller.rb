class StaticpagesController < ApplicationController
  def home
    @applicants = Applicant.all
  end

  def aboutus
  end

  def offices
    @users = User.all
  end

  def contactus
  	@emailu = Emailu.new(params[:emailu])
  	@smstext = Smstext.new(params[:smstext])
  end
end