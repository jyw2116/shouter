class ShoutsController < ApplicationController
 def create
   current_user.shouts.create(params[:shout])
   redirect_to dashboard_path, notice: "You shouted!"
 end 
end
