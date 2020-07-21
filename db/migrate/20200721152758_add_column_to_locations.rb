class AddColumnToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :positionX, :integer
    add_column :locations, :positionY, :integer
    add_column :locations, :size, :integer
  end
end
