class Contact < ActiveRecord::Base
  attr_accessible :contact, :contact_person, :contact_type, :user_id

  belongs_to :user
end
