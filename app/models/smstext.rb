class Smstext < ActiveRecord::Base
  attr_accessible :recipient, :smsmessage

  VALID_NUMBER = /[\d]{11}/

  validates :recipient, presence: true, format: { with: VALID_NUMBER}
  validates :smsmessage, presence: true, length: { minimum: 10, maximum: 160 }
end
