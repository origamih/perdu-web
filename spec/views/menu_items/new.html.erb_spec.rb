require 'rails_helper'

RSpec.describe "menu_items/new", type: :view do
  before(:each) do
    assign(:menu_item, MenuItem.new(
      :menu_category => nil,
      :title => "MyString",
      :description => "MyString",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new menu_item form" do
    render

    assert_select "form[action=?][method=?]", menu_items_path, "post" do

      assert_select "input#menu_item_menu_category_id[name=?]", "menu_item[menu_category_id]"

      assert_select "input#menu_item_title[name=?]", "menu_item[title]"

      assert_select "input#menu_item_description[name=?]", "menu_item[description]"

      assert_select "input#menu_item_image_url[name=?]", "menu_item[image_url]"

      assert_select "input#menu_item_price[name=?]", "menu_item[price]"
    end
  end
end
