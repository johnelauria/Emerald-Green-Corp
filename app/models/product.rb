class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :user_id, :product_type, :image

  belongs_to :user

  mount_uploader :image, AvatarUploader
end
