class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.string :character
      t.string :response
      t.string :options
      t.string :prevResponse
      t.string :nextResponse

      t.timestamps
    end
  end
end
