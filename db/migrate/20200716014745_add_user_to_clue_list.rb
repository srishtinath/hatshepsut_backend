class AddUserToClueList < ActiveRecord::Migration[6.0]
  def change
    add_column :clue_lists, :user_id, :integer
  end
end
