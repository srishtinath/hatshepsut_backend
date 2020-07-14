class CreateItemClueLists < ActiveRecord::Migration[6.0]
  def change
    create_table :item_clue_lists do |t|
      t.string :item
      t.string :cluelist

      t.timestamps
    end
  end
end
