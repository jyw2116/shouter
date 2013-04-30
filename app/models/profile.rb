class Profile
	def initialize user_id
		@user_id = user_id
	end

	def user
		User.find(@user_id)
	end

	def timeline
		Timeline.new(@user_id)
	end

	private

	attr_reader :user_id

	# def user_id
	# 	@user_id
	# end
end



