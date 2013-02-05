class HomeImage < ActiveRecord::Base
  attr_accessible :description, :image

  mount_uploader :image, AvatarUploader

  validates :image, presence: true, uniqueness: true
end
