class AddUnitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :level, :string
    add_column :users, :unit, :string
  end
end
