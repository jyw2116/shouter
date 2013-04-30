class User < ActiveRecord::Base
  include Clearance::User
  include Concerns::Following
  
  has_many :shouts
end
