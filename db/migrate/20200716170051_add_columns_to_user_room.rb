class AddColumnsToUserRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :user_rooms, :complete?, :boolean
    add_column :user_rooms, :characterSpoken?, :boolean
    add_column :user_rooms, :cluesFound?, :boolean
  end
end
