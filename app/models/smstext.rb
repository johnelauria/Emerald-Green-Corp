class Smstext < ActiveRecord::Base
  attr_accessible :recipient, :smsmessage

  validates :recipient, presence: true, length: { minimum: 10, maximum: 11 }
  validates :smsmessage, presence: true, length: { minimum: 10, maximum: 160 }
end
