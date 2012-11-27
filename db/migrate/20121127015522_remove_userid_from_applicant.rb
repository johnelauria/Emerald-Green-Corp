class RemoveUseridFromApplicant < ActiveRecord::Migration
  def up
    remove_column :applicants, :user_id
  end

  def down
    add_column :applicants, :user_id, :string
  end
end
