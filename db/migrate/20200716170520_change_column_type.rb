class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    remove_column :user_stories, :user
    remove_column :user_stories, :story
    add_column :user_stories, :user_id, :integer
    add_column :user_stories, :story_id, :integer
  end
end
