class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.text :subject
      t.text :kla

      t.timestamps
    end
  end
end
