class Clientprofile < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  validates :content, presence: true

  belongs_to :user
end
