class Image < ActiveRecord::Base
  attr_accessible :image, :user_id

  belongs_to :user

  validate :image, presence: true

  mount_uploader :image, AvatarUploader
end
