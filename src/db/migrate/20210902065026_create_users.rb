class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :schoolname
      t.string :email
      t.string :diary
      t.string :password

      t.timestamps
    end
  end
end
