class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.text :name
      t.text :image
      t.integer :age
      t.text :stage

      t.timestamps
    end
  end
end
