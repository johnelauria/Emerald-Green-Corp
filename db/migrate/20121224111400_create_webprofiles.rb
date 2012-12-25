class CreateWebprofiles < ActiveRecord::Migration
  def change
    create_table :webprofiles do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
