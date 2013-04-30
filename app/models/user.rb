class User < ActiveRecord::Base
  include Clearance::User
  include Concerns::Following

  has_many :shouts

  def timeline
    # Shout.where(user_id: self_and_followed_user_ids).current
    Timeline.new(self_and_followed_user_ids)
  end

  def public_timeline
    Timeline.new(id)
  end
end
