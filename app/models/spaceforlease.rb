class Spaceforlease < ActiveRecord::Base
  attr_accessible :description, :level, :main_image, :unit

  mount_uploader :main_image, AvatarUploader

  has_many :spaceforleaseimages, dependent: :destroy

  validates :main_image, presence: true
end
