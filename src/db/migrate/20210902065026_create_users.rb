class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :schoolname
      t.string :email
      t.string :students
      t.string :password_digest

      t.timestamps
    end
  end
end
