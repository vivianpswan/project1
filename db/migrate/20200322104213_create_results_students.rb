class CreateResultsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :results_students, :id => false do |t|
      t.integer :result_id
      t.integer :student_id
    end
  end
end
