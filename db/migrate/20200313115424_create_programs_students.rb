class CreateProgramsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :programs_students, :id => false do |t|
      t.integer :program_id
      t.integer :student_id
    end
  end
end
