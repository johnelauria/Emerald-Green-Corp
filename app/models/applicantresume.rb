class Applicantresume < ActiveRecord::Base
  attr_accessible :cover_letter, :email, :mobile_number, :name, :nationality, :upload_resume, :user_id, :applied_for

  mount_uploader :upload_resume, ResumeUploader

  belongs_to :user

  validates :name, :email, :mobile_number, :nationality, :upload_resume, presence: true
end
