class Applicant < ActiveRecord::Base
  attr_accessible :position, :qualifications, :skills, :user_id

  belongs_to :user
end
