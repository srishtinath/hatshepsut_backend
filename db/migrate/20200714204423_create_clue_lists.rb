class CreateClueLists < ActiveRecord::Migration[6.0]
  def change
    create_table :clue_lists do |t|

      t.timestamps
    end
  end
end
