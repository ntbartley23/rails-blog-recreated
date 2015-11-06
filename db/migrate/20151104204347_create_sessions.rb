class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |s|
    	s.string :fname
    	s.string :lname
    	s.string :email


      s.timestamps null: false
    end
  end
end
