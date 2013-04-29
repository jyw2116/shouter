class PhotoShout < ActiveRecord::Base
  attr_accessible :photo
  has_attached_file :photo
end
