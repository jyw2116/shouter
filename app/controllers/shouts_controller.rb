class ShoutsController < ApplicationController
  def create
    current_user.shouts.create(content: shout_content)
    redirect_to dashboard_path, notice: "You shouted!"
  end

  private

  def shout_content
    raise 
  end
end