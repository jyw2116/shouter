class UsersController < ApplicationController
	def show
		@profile = Profile.new(params[:id], current_user: current_user)
	end
end
