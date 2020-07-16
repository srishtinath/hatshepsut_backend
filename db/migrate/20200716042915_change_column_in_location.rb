class ChangeColumnInLocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :room
    add_column :locations, :room_id, :integer
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
