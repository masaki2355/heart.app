class AddStudentToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :student, :string
  end
end
