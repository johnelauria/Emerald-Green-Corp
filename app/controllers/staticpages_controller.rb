class StaticpagesController < ApplicationController
  def home
  end

  def aboutus
  end

  def officers
  end

  def contactus
  	@emailu = Emailu.new(params[:emailu])
  	@smstext = Smstext.new(params[:smstext])
  end
end
