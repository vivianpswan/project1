class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.text :stage
      t.text :subject

      t.timestamps
    end
  end
end
