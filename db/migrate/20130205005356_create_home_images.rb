class CreateHomeImages < ActiveRecord::Migration
  def change
    create_table :home_images do |t|
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
