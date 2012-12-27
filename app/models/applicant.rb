class Applicant < ActiveRecord::Base
  attr_accessible :position, :qualifications, :skills, :user_id, :message, :accept_resume

  belongs_to :user

  validates :position, :qualifications, :skills, presence: true
end
