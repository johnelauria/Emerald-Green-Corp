class AddContactsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :telephone, :string
  end
end
