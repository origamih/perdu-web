json.extract! menu_item, :id, :menu_category_id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url menu_item_url(menu_item, format: :json)