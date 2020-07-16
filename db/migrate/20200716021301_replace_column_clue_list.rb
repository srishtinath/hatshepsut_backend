class ReplaceColumnClueList < ActiveRecord::Migration[6.0]
  def change
    remove_column :clue_lists, :user_id
    add_column :clue_lists, :user, :string
  end
end
