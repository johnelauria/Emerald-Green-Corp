class ChangeDataFromApplicant < ActiveRecord::Migration
  def up
    remove_column :applicants, :skills
    remove_column :applicants, :qualifications
    add_column :applicants, :requirements, :text
    add_column :applicants, :responsibilities, :text
  end

  def down
    add_column :applicants, :skills, :string
    add_column :applicants, :qualifications, :text
    remove_column :applicants, :requirements, :text
    remove_column :applicants, :responsibilities, :text
  end
end
