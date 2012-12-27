class AddUseridToApplicantresumes < ActiveRecord::Migration
  def change
    add_column :applicantresumes, :user_id, :integer
  end
end
