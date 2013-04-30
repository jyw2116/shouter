class Dashboard
	def initialize user_ids
		@user = user_ids
	end

	def timeline
		Timeline.new(timeline_user_ids)
	end

	def new_text_shout
		TextShout.new
	end

	def new_photo_shout
		PhotoShout.new
	end

	private

	attr_reader :user

	def timeline_user_ids
		user.self_and_followed_user_ids
	end
end