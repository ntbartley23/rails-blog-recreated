class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
    	p.integer :user_id
    	p.string :content


      p.timestamps null: false
    end
  end
end
