class CreateChatOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_options do |t|
      t.integer :chat_id
      t.string :text

      t.timestamps
    end
  end
end
