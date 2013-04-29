class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships

  def can_follow? user
  	self != user
  end
end
