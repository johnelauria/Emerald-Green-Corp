class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :password, :password_confirmation, :remember_token, :description, :logo
  has_secure_password

  has_many :images
  has_many :applicants
  has_many :clientprofiles

  before_save { self.email.downcase! }
  before_save { create_remember_token }

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  mount_uploader :logo, AvatarUploader

  private

  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end
end
