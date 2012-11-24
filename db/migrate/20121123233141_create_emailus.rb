class CreateEmailus < ActiveRecord::Migration
  def change
    create_table :emailus do |t|
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
