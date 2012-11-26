class ChangeApplicantUseridToInteger < ActiveRecord::Migration
  def change
  	change_column :applicants, :user_id, :integer
  end
end
