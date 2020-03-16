class RenamePasswordToPasswordDigestInTutors < ActiveRecord::Migration[5.2]
  def change
    rename_column :tutors, :password, :password_digest
  end
end
