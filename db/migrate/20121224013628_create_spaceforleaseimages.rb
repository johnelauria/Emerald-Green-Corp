class CreateSpaceforleaseimages < ActiveRecord::Migration
  def change
    create_table :spaceforleaseimages do |t|
      t.string :image
      t.text :description
      t.integer :spaceforlease_id

      t.timestamps
    end
  end
end
