class AddStudentIdToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :student_id, :integer
  end
end
