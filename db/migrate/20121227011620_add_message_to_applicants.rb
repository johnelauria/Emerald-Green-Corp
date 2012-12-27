class AddMessageToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :message, :text
    add_column :applicants, :accept_resume, :boolean
  end
end
