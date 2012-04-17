class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Username
      t.string :password_digest
      t.string :Firstname
      t.string :Lastname
      t.string :Email
      t.string :photo

      t.timestamps
    end
  end
end
