class Applicant < ActiveRecord::Base
  attr_accessible :position, :requirements, :responsibilities, :user_id, :message, :accept_resume, :deadline

  belongs_to :user

  validates :position, :requirements, :responsibilities, presence: true

  before_save :nil_for_current_date

  def nil_for_current_date
  	if self.deadline.strftime("%m-%d-%Y").to_s == Date.today.strftime("%m-%d-%Y").to_s
  		self.deadline = nil
  	end
  end
end
