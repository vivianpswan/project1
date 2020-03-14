class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.text :name
      t.text :email
      t.string :password
      t.boolean :admin
      t.text :stage
      t.text :subject
      

      t.timestamps
    end
  end
end
