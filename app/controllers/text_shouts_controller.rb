class TextShoutsController < ShoutsController
  def create
  	super
  end

	private

	def shout_content
		PhotoShout.new(params[:photo_shout])
	end
end