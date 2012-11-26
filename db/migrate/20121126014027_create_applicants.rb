class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :user_id
      t.string :position
      t.string :skills
      t.text :qualifications

      t.timestamps
    end
  end
end
