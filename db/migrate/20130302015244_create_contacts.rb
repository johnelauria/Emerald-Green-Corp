class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :type
      t.string :contact
      t.string :contact_person

      t.timestamps
    end
  end
end
