class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :room
      t.string :image_url

      t.timestamps
    end
  end
end
