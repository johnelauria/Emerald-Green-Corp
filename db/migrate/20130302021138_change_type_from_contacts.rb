class ChangeTypeFromContacts < ActiveRecord::Migration
  def up
  	remove_column :contacts, :type
  	add_column :contacts, :contact_type, :string
  end

  def down
  	remove_column :contacts, :contact_type
  	add_column :contacts, :type, :string
  end
end
