class RemoveOptionsFromChats < ActiveRecord::Migration[6.0]
  def change
    remove_column :chats, :options
  end
end
