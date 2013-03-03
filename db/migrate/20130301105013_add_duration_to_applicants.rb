class AddDurationToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :deadline, :date
  end
end
