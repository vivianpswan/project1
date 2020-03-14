class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.text :outcome
      t.boolean :completion

      t.timestamps
    end
  end
end
