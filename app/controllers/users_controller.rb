class UsersController < ApplicationController
	def show
		@profile = Profile.new(params[:id])
	end
end
