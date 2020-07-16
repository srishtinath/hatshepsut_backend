class AddAnimationImageToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :image_url2, :string
  end
end
