class Profile
	def initialize user_id, options = {}
		@user_id = user_id
		@options = options
	end

	def user
		User.find(@user_id)
	end

	def timeline
		if public_profile?
			PublicTimeline.new(profile_timeline)
		else
			profile_timeline
		end
	end

	private

	attr_reader :user_id, :options

	def public_profile?
		current_user.can_follow? user
	end

	def profile_timeline
		Timeline.new(user_id)
	end

	def current_user
		options[:current_user]
	end
end



