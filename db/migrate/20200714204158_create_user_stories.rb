class CreateUserStories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stories do |t|
      t.string :progress
      t.string :user
      t.string :story

      t.timestamps
    end
  end
end
