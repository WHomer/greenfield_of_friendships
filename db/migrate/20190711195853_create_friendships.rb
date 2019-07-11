class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.string :site_token
      t.text :user_id
      t.text :friend_id
      t.timestamps null: false
      end
  end
end
