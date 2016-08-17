class MenuCategory < ActiveRecord::Base
  has_many :menu_items
  validates_presence_of :title, :category
  CATEGORY_OPTIONS = [ "cocktail", "other" ]
end
