class CreateProgramsResults < ActiveRecord::Migration[5.2]
  def change
    create_table :programs_results, :id => false do |t|
      t.integer :program_id
      t.integer :result_id
    end
  end
end
