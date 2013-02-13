class StaticpagesController < ApplicationController
  def home
    @applicants = Applicant.all
    @spaceforleases = Spaceforlease.all
    @webprofiles = Webprofile.all
    @webprofile = Webprofile.new(params[:webprofile])

    Emailu.delete_all
    Smstext.delete_all
  end

  def aboutus
  end

  def spaceforlease
  end

  def offices
    @users = User.all
  end

  def contactus
  	@emailu = Emailu.new(params[:emailu])
  	@smstext = Smstext.new(params[:smstext])
  end
end
