class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :logo, :string
    add_column :users, :description, :text
  end
end
