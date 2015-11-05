class AddIndex < ActiveRecord::Migration
  def change
  	add_index :group_users, :group_id
  	add_index :group_users, :user_id  	
  	add_index :groups, :user_id
  	add_index :posts, :group_id
  	add_index :posts, :user_id  	
  end
end
