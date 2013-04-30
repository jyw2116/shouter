class PublicTimeline
	def initialize timeline
		@timeline = timeline
	end

	def shouts
		@timeline.shouts.public
	end

	def to_partial_path
		@timeline.to_partial_path
	end
end