require 'rails_helper'

RSpec.describe "menu_categories/new", type: :view do
  before(:each) do
    assign(:menu_category, MenuCategory.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new menu_category form" do
    render

    assert_select "form[action=?][method=?]", menu_categories_path, "post" do

      assert_select "input#menu_category_title[name=?]", "menu_category[title]"

      assert_select "input#menu_category_description[name=?]", "menu_category[description]"
    end
  end
end
