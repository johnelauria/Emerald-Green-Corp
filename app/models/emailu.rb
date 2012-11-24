class Emailu < ActiveRecord::Base
  attr_accessible :email, :message

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { minimum: 10}
end
