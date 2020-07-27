class AddDisplayToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :display, :boolean
  end
end
