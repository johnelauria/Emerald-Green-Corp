class CreateSpaceforleases < ActiveRecord::Migration
  def change
    create_table :spaceforleases do |t|
      t.string :main_image
      t.string :unit
      t.string :level
      t.text :description

      t.timestamps
    end
  end
end
