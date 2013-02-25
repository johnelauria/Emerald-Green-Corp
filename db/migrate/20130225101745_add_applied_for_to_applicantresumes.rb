class AddAppliedForToApplicantresumes < ActiveRecord::Migration
  def change
    add_column :applicantresumes, :applied_for, :string
  end
end
