class TextShoutsController < ApplicationController
	def create
		text_shout = TextShout.new(params[:text_shout])
		shout = current_user.shouts.create(content: text_shout)
		redirect_to dashboard_path, notice: "You shouted!"
	end 
end
