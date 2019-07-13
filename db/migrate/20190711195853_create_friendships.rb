class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.string :site_token
      t.integer :user_id
      t.integer :friend_id
      t.timestamps null: false
      end
  end
end
