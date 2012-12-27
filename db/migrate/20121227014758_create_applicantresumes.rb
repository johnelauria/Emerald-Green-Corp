class CreateApplicantresumes < ActiveRecord::Migration
  def change
    create_table :applicantresumes do |t|
      t.string :name
      t.string :email
      t.string :mobile_number
      t.string :nationality
      t.string :upload_resume
      t.text :cover_letter

      t.timestamps
    end
  end
end
