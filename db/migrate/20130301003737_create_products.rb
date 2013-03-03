class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :type
      t.decimal :price, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
