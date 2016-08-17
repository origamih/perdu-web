class AddCategoryToMenuCategory < ActiveRecord::Migration
  def change
    add_column :menu_categories, :category, :string
  end
end
