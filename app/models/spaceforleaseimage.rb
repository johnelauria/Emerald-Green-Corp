class Spaceforleaseimage < ActiveRecord::Base
  attr_accessible :description, :image, :spaceforlease_id

  belongs_to :spaceforlease

  mount_uploader :image, AvatarUploader
end
