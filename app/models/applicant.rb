class Applicant < ActiveRecord::Base
  attr_accessible :position, :requirements, :responsibilities, :user_id, :message, :accept_resume

  belongs_to :user

  validates :position, :requirements, :responsibilities, presence: true
end
