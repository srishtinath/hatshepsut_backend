class ChangeColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_rooms, :user
    remove_column :user_rooms, :room
    add_column :user_rooms, :user_id, :integer
    add_column :user_rooms, :room_id, :integer

    remove_column :characters, :room
    add_column :characters, :room_id, :integer

    remove_column :chats, :character
    add_column :chats, :character_id, :integer

    remove_column :clue_lists, :user
    add_column :clue_lists, :user_id, :integer

    remove_column :item_clue_lists, :item
    remove_column :item_clue_lists, :cluelist
    add_column :item_clue_lists, :item_id, :integer
    add_column :item_clue_lists, :clue_list_id, :integer

    remove_column :items, :location
    remove_column :items, :room
    add_column :items, :location_id, :integer

    add_column :rooms, :story_id, :integer
  end
end
