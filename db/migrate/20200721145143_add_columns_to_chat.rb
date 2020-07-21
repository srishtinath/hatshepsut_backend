class AddColumnsToChat < ActiveRecord::Migration[6.0]
  def change
    remove_column :chats, :prevResponse
    remove_column :chats, :nextResponse

    add_column :chats, :prevResponse_id, :integer
    add_column :chats, :nextResponse_id, :integer
  end
end
