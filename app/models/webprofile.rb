class Webprofile < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :content, presence: true
end
