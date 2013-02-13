class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :password, :password_confirmation, :remember_token, :description, :logo, :unit, :level, :username, :telephone
  has_secure_password

  has_many :images, dependent: :destroy
  has_many :applicants, dependent: :destroy
  has_many :clientprofiles, dependent: :destroy
  has_many :applicantresumes, dependent: :destroy

  before_save { self.email.downcase! }
  before_save { create_remember_token }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, :unit, :level, presence: true
  validates :username, uniqueness: true

  mount_uploader :logo, AvatarUploader

  private

  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end
end
