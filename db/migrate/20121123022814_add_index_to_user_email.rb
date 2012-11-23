class AddIndexToUserEmail < ActiveRecord::Migration
  def change
  	add_index :users, :remember_token
  	add_index :users, :email
  end
end
