class CreateClientprofiles < ActiveRecord::Migration
  def change
    create_table :clientprofiles do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
