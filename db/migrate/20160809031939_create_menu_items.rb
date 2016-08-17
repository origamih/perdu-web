class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :menu_category, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.string :image_url
      t.decimal :price

      t.timestamps null: false
    end
  end
end
