class AddColumnsToChatOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :chat_options, :nextResponse_id, :integer
    add_column :chat_options, :prevResponse_id, :integer

    remove_column :chats, :prevResponse_id
    remove_column :chats, :nextResponse_id
  end
end
