class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |u|
    	u.string :fname
    	u.string :lname
    	u.integer :birthdate
    	u.string :username
    	u.string :password
    	u.string :email

      u.timestamps null: false
    end
  end
end
