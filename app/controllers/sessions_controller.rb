class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			flash[:error] = "Invalid email / password combination"
			redirect_to root_path
		end
	end

	def destroy
		signout
		redirect_to root_path
		flash[:success] = "You have successfully signed out!"
	end
end